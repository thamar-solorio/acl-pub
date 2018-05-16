---
layout: default
title: ACL 2018 aclweb anthology generation for publication chairs
updated: 15 may 2018 by slukin
---

# Building for ACL Web Anthology 

This document describes how to build the proceedings for the [ACL Web Anthology](http://aclweb.org/anthology/).

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

For each volume, the following are generated: 
  * a `${volume_id}.xml` containing entries for the entire proceedings (e.g., `N18.xml`)  
  * a .bib and .pdf for each volume (e.g,. `N18-1.bib` and `N18-1.pdf`)  
  * a .bib and .pdf for the frontmatter (e.g,. `N18-1000.bib` and `N18-1000.pdf`) and each paper (e.g,. `N18-1001.bib` and `N18-1001.pdf`)  
  * **Note:** that the "N18-1" naming convention is derived directly from the Abbreviation entered in the CDROM tab. For standardization purposes, this CDROM abbreviation field is recommended to be consistent with the bibtex url id (in this case, "N18-1%03d").




