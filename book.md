---
layout: default
title: NAACL 2016 book information for workshop chairs
---

# How to produce proceedings for NAACL 2016

This page is for conference organizers (main conference, workshop &
demo chairs) who need to put together a book for inclusion in the
NAACL proceedings. The book deadline is **May 10**, unless you have
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

We will update this page periodically with NAACL 2016-specific details and answers to frequently
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
[ACLPUB HOWTO](aclpub-howto-2010.html), or take a look at this
[sample order file from SSST-7](files/sample-order.txt). We will build
the conference handbook from the `order` file, which you can either
edit manually in START's provided textbox or which is created by the
(more complicated) Excel-based `Schedule Maker` tool.

1. Generate an initial order file from the `Order` tab (`Import from
   ScheduleMaker` works even if you have not yet used Schedule Maker)

1. Copy it to a local text editor, edit it appopriately 

1. Paste it back into the `order` window and save 

#### Sample order file

The following order file is from SSST-7 at NAACL 2013. You can use it
as a template. Note that this file is **computer readable**, used to
generate the LaTeX for both the proceedings and the handbook, so it's
very important to get all the details right (see below for some common
mistakes):

    * Thursday, June 13, 2013
    + 9:15--9:30 Opening Remarks

    = Session 1
    8 9:30--10:00 # A Semantic Evaluation of Machine Translation Lexical Choice
    6 10:00--10:30 # Taste of Two Different Flavours: Which Manipuri Script works better for English-Manipuri Language pair SMT Systems?
    + 10:30--11:00 Break

    = Session 2
    7 11:00--11:30 # Hierarchical Alignment Decomposition Labels for Hiero Grammar Rules
    3  11:30--12:00 # A Performance Study of Cube Pruning for Large-Scale Hierarchical Machine Translation
    4  12:00--12:30 # Combining Word Reordering Methods on different Linguistic Abstraction Levels for Statistical Machine Translation
    + 12:30--14:00 Lunch

    = Session 3
    + 14:00--15:00 Panel discussion: Meaning Representations for Machine Translation, with Jan Hajic, Kevin Knight, Martha Palmer and Dekai Wu
    9 15:00--15:30 # Combining Top-down and Bottom-up Search for Unsupervised Induction of Transduction Grammars
    + 15:30--16:00 Break

    = Session 4
    2 16:00--16:30 # A Formal Characterization of Parsing Word Alignments by Synchronous Grammars with Empirical Evidence to the ITG Hypothesis.
    5 16:30--17:00 # Synchronous Linear Context-Free Rewriting Systems for Machine Translation

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

   **This is very important for things like the digital handbook!**

-  Time ranges should be fully specified, with two dashes in between
    (and no spaces). Don't put just the start time.

       17 9:00--9:30 # A really great paper

-  Do not put time ranges in parentheses

-  Please make sure your file passes [this verification script](files/verify_order.py). E.g.,

       $ cat proceedings/order | python verify_order.py
       Found 0 errors

#### Copyright Page

Use [this copyright.tex form](files/copyright.tex) (located under
Templates → copyright.tex). You will have to fill out the ISBN; once
we have it, we will place it in the Google spreadsheet.

#### CDROM Tab

You will need to fill out this tab with the correct values for your volume, 
many of which can be found [here](https://docs.google.com/spreadsheets/d/1lqy0cL408H5JEcMV7crYvLZ02Fz8Q6QPUKjNbcpJ1TA/edit?usp=sharing).
As an example, here are the values used for the main conference proceedings:

    Abbreviation    NAACL-HLT
    Type	        Main Conference
    Title	        The 2016 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies
    URL	            http://naacl.org/naacl-hlt-2016/
    Book Title	    Proceedings of the 2016 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies
    Month	        June
    Year	        2016
    Location	    San Diego, California
    Publisher	    Association for Computational Linguistics
    Chair 1	        Kevin Knight (USC Information Sciences Institute)
    Chair 2	        Ani Nenkova (University of Pennsylvania) 
    Chair 3	        Owen Rambow (Columbia University)
    Chair 4	        TOBEFILLED-Jill Burstein (Educational Testing Service)
    Chair 5	        TOBEFILLED-Jill Burstein (Educational Testing Service)
    Chair 6	        TOBEFILLED-Jill Burstein (Educational Testing Service)
    Chair 7	        TOBEFILLED-Jill Burstein (Educational Testing Service)
    Chair 8	        TOBEFILLED-Jill Burstein (Educational Testing Service)
    Bibtex URL	    http://www.aclweb.org/anthology/N16-1%03d

**The correct value** for `Bibtex URL` can be found [here](https://docs.google.com/spreadsheets/d/1lqy0cL408H5JEcMV7crYvLZ02Fz8Q6QPUKjNbcpJ1TA/edit?usp=sharing)

