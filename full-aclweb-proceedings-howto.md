---
layout: default
title: ACL 2018 aclweb anthology generation for publication chairs
updated: 06 june 2018 by slukin

---

# Generating proceedings for the ACL Anthology

This document describes how to build the proceedings for the [ACL Anthology](http://www.aclweb.org/anthology/).

This guide starts after you, as publication chair, have generated the main paper proceedings tarball in START, and verified that all the workshops, tutorials, demos, etc., generated their tarballs, following the instructions from [002.book.md](002.book.md).

The end product is a tarball of the complete Anthology that will be sent to the ACL Anthology editor.

**Warning: This guide is only for _conference publication chairs_.** If you are a workshop chair, tutorial chair, demo chair, etc., you are _done_ after the conference publication chairs have verified your tarball.

Originally written by Meg Mitchell, for ACL 2017, NAACL 2018, and ACL 2018. Scripts and documentation updated by Stephanie Lukin for NAACL 2018.

## Steps

(These steps were last tested under Ubuntu and MacOS.)

## 0a. Clone the repository

```
git clone https://github.com/acl-org/ACLPUB
```

(Note to users of previous versions: The location of the repository has changed.)

The scripts you will be using are in the subdirectory
`ACLPUB/anthologize`. Below, we assume that you have this directory in
your `PATH`; if not, you'll need to provide full pathnames to scripts.

## 0b. Install dependencies

You'll need Python >=3.5 and the Python packages `latexcodec` and
`pybtex`; these can usually be installed by running:

```
cd ACLPUB/anthologize
pip install -r requirements.txt
```

## 1. Create `acronyms_list`

Create a file that contains a list of the START names of all
tracks/workshops associated with the conference, one per line. You can
call this file whatever you want, but below, we assume that it is
called `acronyms_list`. For example, the `acronyms_list` for NAACL
2018 included:

```
naacl2018-longpapers
naacl2018-shortpapers
SemEval-2018
starsem18
```

The START name of both the conference and each track/workshop can be
found in the START URL of each track/workshop:

```
https://www.softconf.com/<conference>/<track-or-workshop>
```

(Note to users of previous versions: You no longer need to include the
volume id and number. You can, but they will be ignored.)

## 2. Download all proceedings from START

This step downloads all of the main paper proceedings, workshops, demos, and tutorials that will be included in the proceedings.

```
download-proceedings.sh <conference> acronyms_list
```
where `<conference>` is replaced by the START name of the conference
(found in the URL of its START page).

The script creates a `data/` directory, and downloads the final
tarball from each acronym listed to a unique directory in
`data/`. Once downloaded, the script also unpacks each tarball. The
result should include the following directories and files (using the
above subset of NAACL 2018 as an example):

```
data/
  naacl2018-longpapers/
    proceedings/
      meta
      cdrom/
  naacl2018-shortpapers/
    proceedings/
      meta
      cdrom/
  SemEval-2018/
    proceedings/
      meta
      cdrom/
  starsem18/
    proceedings/
      meta
      cdrom/
```

Each `meta` file is just a collection of key/value pairs, one per
line, with the key and value separated by whitespace. The lines of
interest are (using SemEval-2018 as an example):

```
abbrev semeval
year 2018
bib_url http://www.aclweb.org/anthology/S18-1%03d
```

These have all been set by publications and book chairs in START
(Publication Console &rarr; ACLPUB &rarr; CDROM). It's recommended
that **the `abbrev` be the same as the Anthology ID**, e.g., `S18-1`, but
this is not required. Here, the `abbrev` has deliberately been altered
to make it clear that it could be different from both its START name
(`SemEval-2018`) and its Anthology ID (`S18-1`).

Do not edit any of the fields except for `bib_url`. You _can_ edit
`bib_url` (for example, if an Anthology ID changed or is incorrect).

Each of the (anachronistically named) `cdrom/` subdirectories has the
following layout (again using SemEval 2018 as an example):

```
cdrom/
  semeval-2018.bib            BibTeX file for proceedings and all papers
  semeval-2018.pdf            PDF of whole proceedings
  additional/
    semeval1001_Software.tgz  Software attached to paper 1001
    semeval1003_Dataset.zip   Dataset attached to paper 1003
    semeval1003_Note.pdf      Note attached to paper 1003
  bib/
    S18-1000.bib              BibTeX entry for whole proceedings
    S18-1001.bib              BibTeX entry for paper 1001
    S18-1002.bib               etc.
    S18-1003.bib
  pdf/
    S18-1000.pdf              PDF of front matter
    S18-1001.pdf              PDF for paper 1001
    S18-1002.pdf               etc.
    S18-1003.pdf
```

## 3. Convert to Anthology format

The next step converts the downloaded proceedings to the format required by the ACL Anthology.

Just run:
```
make-anthology.sh
```
(Note to users of previous versions: You no longer need to provide the
`acronyms_list`; you can, but it will be ignored.)

This script does two jobs.

### 3a. Create and populate Anthology directories

First, it creates an `anthology/` directory with a structure mirroring
that of the [ACL Web Anthology](http://aclweb.org/anthology/),
populating it with symlinks to the proceedings downloaded from START.

The `anthology/` directory has the following layout:

```
anthology/
  S/
    S18/
      S18.xml                   Metadata for proceedings and all papers
      S18-1.bib                 BibTeX file for proceedings and all papers
      S18-1.pdf                 PDF of whole proceedings
      S18-1000.bib              BibTeX entry for whole proceedings
      S18-1000.pdf              PDF of front matter
      S18-1001.bib               etc.
      S18-1001.pdf
      S18-1001.Software.tgz
      S18-1002.bib
      S18-1002.pdf
      S18-1003.bib
      S18-1003.pdf
      S18-1003.Dataset.zip
      S18-1003.Note.pdf
```

If you need to run this step manually, the usage is `anthologize.pl
data/<name>/proceedings anthology`, where `<name>` is the START name
of the track/workshop to process.

### 3b. Generate XML files

Next, `make-anthology.sh` generates the XML files that the Anthology
uses to store all metadata and pointers to papers and their
attachments. One is generated for each venue+year; in our example,
there would be `anthology/N18.xml` for N18-1 and N18-2, and
`anthology/S18.xml` for S18-1 and S18-2.

The XML file lists attachments under several different fields; the
most general one looks like

```
  <attachment type="software">S18-1001.Software.tgz</attachment>
```

`anthology_xml.py` will generate these fields automatically by
looking at the attachment filename.

If you need to run this step manually, the usage is `anthology_xml.py
anthology/<x>/<x><yy> -o anthology/<x>/<x><yy>/<x><yy>.xml`, where
`<x>` is the one-letter code of the conference (e.g., `N` for NAACL)
and `<yy>` is the two-digit year.

## 4. Package and send the Anthology directory

```
tar czhvf <conference>_anthology.tgz anthology
```
where `<conference>` is again the name of the conference.

Note that the `-h` flag is necessary to follow the symbolic links that
were created in Step 3a.

Please send (a link to) the tarball to the ACL Anthology Editor, currently [Matt Post](https://mjpost.github.io).
