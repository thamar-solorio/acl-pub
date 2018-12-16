---
layout: default
title: ACL 2018 aclweb anthology generation for publication chairs
updated: 06 june 2018 by slukin

---

# Building for ACL Web Anthology 

This document describes how to build the proceedings for the [ACL Web Anthology](https://aclanthology.coli.uni-saarland.de/).

This guide starts after you, as publication chair, have generated the main paper proceedings tarball in START, and verified that all the workshops, tutorials, demos, etc., generated their tarballs, following the instructions from [002.book.md](002.book.md).

The end product is a tarball of the complete Anthology that will be sent to Min-Yen, or whoever is the current ACL Web Anthology editor. 

**Warning: This guide is only for _conference publication chairs_.**  
If you are a workshop chair, tutorial chair, demo chair, etc., you are _done_ after the conference publication chairs have verified your tarball.

Steps originally written by Meg Mitchell, for ACL 2017, NAACL 2018, and ACL 2018. Scripts and documentation updated by Stephanie Lukin for NAACL 2018. 

## Steps: 
(These steps were last tested on an Ubuntu machine)

1. `cd assets/files/aclweb_proceedings/`
1. Download proceedings tarballs from START:  
   * Usage: `./download-proceedings.sh ${softconf conference acronym in url} ${name of file listing conference and workshop acronyms in softconf urls}`
   * Example: `./download-proceedings.sh naacl2018 acronyms_list.txt`
   * See [[acronyms_list-notes]](#acronyms_list) on how to modify `acronyms_list.txt` for your conference, and [[2-notes]](#step-2-Download-proceedings-tar-balls-from-START) for the expected output of this script

1. Build the Anthology
   * Usage: `./make_anthology.sh ${name of file listing conference and workshop acronyms in softconf urls}`
   * Example: `./make_anthology.sh acronyms_list.txt`
   * See [[acronyms_list-notes]](#acronyms_list) on how to modify `acronyms_list.txt` for your conference,  and [[3-notes]](#step-3-build-the-anthology) for the expected output of this script
   * See [[Step 3b]](#step_3b_additional_files) for how to **manually** deal with atttachments

1. Zip the generated anthology directory 
   * Usage: `tar czhvf ${conference anthology}.tgz anthology/`
   * Example: `tar czhvf naacl2018_anthology.tgz anthology/`
   * `-h` flag is necessary to remove the symbolic links that were created in Step 3

1. Send tar to ACL Web Anthology editor. 


### acronyms_list
This file is used as input by both `download-proceedings.sh` and `make_anthology.sh`. Each line is of the format: `${acronym} ${volume_id} ${volume_no}`
1. `${acronym}` derived from the softconf url from `https://www.softconf.com/naacl2018/${acronym}/`
1. `${volume_id}` of which thes proceedings are a part of. This is the letter and year from the bibtex url (e.g,. "N18" for "N18-1%03d", "S18" for "S18-2%03d", "W18" for "W18-05%02d")
3. `${volume number}` is the number from the bibtex url representing the volume (e.g., the "1" in "N18-1%03d", "2" for "S18-2%03d", "05" for "W18-05%02d")

See the existing file for examples of the file from previous years. You must modify this file to list your conference proceedings. 


### Step 2. Download Proceedings Tar Balls from START 

This step downloads all of the main paper proceedings, workshops, demos, tutorials that will be included in the proceedings. The script creates a `./data/` directory, and downloads the final tar ball from each acronym listed to a unique directory in `./data/`. Once downloaded, the script also unzips each tar ball. The `./data/` directory will look something like this, based off the acronyms given in acronyms_list.txt:
<kbd>![alt text](howto_images/download-proceedings_output.png "Image of Contents of data/ after running download-proceedings.sh")</kbd>  

In using the script, the `${softconf conference acronym in url}` parameter is derived from `https://www.softconf.com/${softconf conference acronym in url}/`




### Step 3. Build the Anthology 

This script creates an `anthology/` directory and structures mirroring that of the [ACL Web Anthology](http://aclweb.org/anthology/), and renames the proceedings files in this new directory. For each volume, the directory path and a subset of the generated files are shown in the images below  
* Main proceedings:  
<kbd>![alt text](howto_images/make_anthology_N.png "Image of Contents of N18/ after running make_anthology.sh")</kbd>  
* Workshop proceedings:  
<kbd>![alt text](howto_images/make_anthology_W.png "Image of Contents of W18/ after running make_anthology.sh")</kbd>  
* *Sem/SemEval proceedings  
<kbd>![alt text](howto_images/make_anthology_S.png "Image of Contents of S18/ after running make_anthology.sh")</kbd>  

#### Step 3a Papers, bib, and frontmatter
For each volume, the following are generated: 
  * a `${volume_id}.xml` containing entries for the entire proceedings (e.g., `N18.xml`)  
  * a .bib and .pdf for each volume (e.g,. `N18-1.bib` and `N18-1.pdf`)  
  * a .bib and .pdf for the frontmatter (e.g,. `N18-1000.bib` and `N18-1000.pdf`)  
  * a .bib and .pdf for each paper (e.g,. `N18-1001.bib` and `N18-1001.pdf`)  
  * a .Notes.pdf if a pdf Optional Attachment exists (see [[Step 3b]](#step_3b_additional_files); e.g., `N18-1012.Notes.pdf`)  
  * **Note:** that the "N18-1" naming convention is derived directly from the Abbreviation entered in the CDROM tab. For standardization purposes, this CDROM abbreviation field is recommended to be consistent with the bibtex url id (in this case, "N18-1%03d").

#### Step 3b Additional Files

There are several types of attachments that appear in the anthology (e.g., see [NAACL 2018 anthology](https://aclanthology.coli.uni-saarland.de/events/naacl-2018)):
* `${paperid}.Notes.pdf` (e.g,. `N18-1012.Notes.pdf`)
* `${paperid}.Datasets.[zip,tgz,...]` (e.g,. `N18-1028.Datasets.tgz`)
* `${paperid}.Software.[zip,tgz,...]` (e.g,. `N18-1083.Software.tgz`)  

Attachments are taken from the OptionalAttachment field in START. You can check if a proceedings has attachments if the following directory exists: `path/to/data/acronym/proceedings/cdrom/additional/` (e.g., `acl-pub/assets/files/aclweb_proceedings/data/naacl2018-longpapers/proceedings/cdrom/additional`) 

This directory will contain a mix of files that are handled differently: 
* `${paperid}_OptionalAttachment.pdf`: these are automatically mapped to `${paperid}.Notes.pdf` in [[Step 3a]](#step_3a_papers_bib_and_frontmatter)
  * **Gotcha**: Because there is currently no way in START for authors to remove previously uploaded attachments, some of these files may be blank. It is recommended that the pub chairs manually look through each `.Notes.pdf` file and delete the non-relvant ones. 
* `${paperid}_OptionalAttachment.[zip,tar,...]`: these **need to be manually renamed** to `${paperid}.Datasets.[zip,tgz,...]` or `${paperid}.Software.[zip,tgz,...]`. Some authors upload latex sources to the OptionalAttachment field, which we have not used to date.
  * **Gotcha**: Because there is currently no way in START to differentiation between Datasets and Software, previous pub-chairs have manually looked at each of these attachments and renamed them accordingly. ¯\\\_(ツ)\_/¯

**Note**: Step 3a is the most important to get to Min-Yen on time. Previous pub-chairs have ended up sending follow on emails with the attachments. 


