---
layout: default
title: NAACL 2015 book information for workshop chairs
---

# How to produce proceedings for NAACL 2015

This page is for conference organizers (main conference, workshop &
demo chairs) who need to put together a book for inclusion in the
NAACL proceedings. The book deadline is **April 15**, unless you have
negotiated an extension.

## Instructions

You should be able to produce your proceedings entirely within the
START manager console.  The relevant page for producing the book is
found under the Conference Program heading, following the `ACLPUB`
link. From there, instructions on book assembly can be found under the
Instructions tab, and by reading the
[ACLPUB HOWTO](aclpub-howto-2010.html).

Once your book builds without error using the `All` button under the
Generate tab, let the publications chairs know by e-mailing us at
[naacl-pub-chairs@googlegroups.com](mailto:naacl-pub-chairs@googlegroups.com).
We will collect the books online using START. There is no need to
e-mail us any zipped files.

We will update this page periodically with NAACL 2015-specific details and answers to frequently
asked questions as they arise. If you encounter any problems with this
process, please email us.

## Details and frequently asked questions

#### Paper formatting

Please make sure that all of your papers meet the camera-ready standards as laid
out <a href="camera-ready-faq.html">in this document</a>. In particular, there are four main
areas of compliance you should look for:

1. *Margins*. Papers should fit entirely within the margins prescribed by the
   conference booklet. The [ACLPUB HOWTO](aclpub-howto-2010.html)
   provides detailed instructions on how to adjust
   margin offsets for papers that need to be shifted.

1.  *Black & White readability*. Papers can contain color images, charts, and
    figures, but they should all be interpretable when printed or viewed in grayscale.

1. *References*. Please make sure there are no obvious problems with the formatting of
   the References section.
   
1. *Metadata*. Please make sure there are no obvious problems with the
   formatting of names in the metadata for each paper (which is
   viewable from the proceedings draft index). In particular, authors
   should be aware that their names
   [will be formatted according to how they have entered it](camera-ready-faq.html#name-formatting)
   on their Softconf unified user info page.

#### Schedules

You will need to produce a schedule for your workshop/session while
generating the proceedings.  **The schedule deadline is the same as
the book deadline!** Please follow the instructions in the
[ACLPUB HOWTO](aclpub-howto-2010.html). We will build the conference
handbook from the `order` file, which you can either edit manually in
START's provided textbox or which is created by the (more complicated)
Excel-based `Schedule Maker` tool. 

1. Generate an initial order file from the `Order` tab (`Import from
   ScheduleMaker` works even if you have not yet used Schedule Maker)

1. Copy it to a local text editor, edit it appopriately 

1. Paste it back into the `order` window and save 

#### Important notes about the order file

The order file is used both to format and order the papers in the
proceedings, and also to generate the handbook. The latter can be a
complex task, making sure that the schedule is formatted correctly and
consistently, and pulling together times across workshops (like the
student research workshop and the main proceedings). Since this is
done in LaTeX, it's important that the schedules be formatted to be
computer-readable.  Here are some notes about the `order` file,
including common mistakes. Note that if you use the ScheduleMaker
tool, the order file is generated automatically and should be to spec.

-  Times should be specified in 24-hour format (implicit AM/PM):

       + 12:00--13:30 Lunch

-  Time ranges should be fully specified, with two dashes in between
    (and no spaces). Don't put just the start time.

       17 9:00--9:30 # A really great paper

-  Do not put time ranges in parentheses

#### Copyright Page

We have taken the liberty of pre-populating the `copyright.tex` under
`ACLPUB`'s `Templates->Sections` with the correct ISBN and ACL
address.  If you have workshop sponsors, you will still need to
acknowledge your sponsors in that file.

#### CDROM Tab

We have also pre-populated many of the fields under the top `CDROM`
tab of the `ACLPUB` console. Only the `chair list` needs to be
filled. Please fill in the `chair list` yourselves and make
adjustments as necessary to the other fields.

The `Bibtex URL` field has now been populated automatically. For your
reference, a complete list of books and their corresponding URLs
[can be found here](bibtex.html).


