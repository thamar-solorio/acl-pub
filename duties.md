---
layout: default
title: Publication Chair Duties and Timeline
updated: 06 june 2018 by slukin
---

A running list of Pub-Chair duties and a rough timeline. 

Document originally written by Matt Post in 2015, and updated by Stephanie Lukin after NAACL 2018. 

## What is my goal?
The final goal is to produce beautiful proceedings to be hosted on the [ACL Anthology](https://aclanthology.coli.uni-saarland.de/)! 

## People pub-chairs regularly interface with: 
* Pricilla Rasmussen, Local Arrangements Chair. Gives us the ISBN numbers
* Min-Yen Kan, ACL Anthology editor. Give us the bibtex urls and support for uploading to the anthology
* Handbook Chair: their duties typically start just after the camera-ready time, and are primarily concerned with `order` files. You'll need to make sure that any changes the handbook chair requests are also reflected in the pdf proceedings. 

## Some duties and timeline of pub chairs

There are several critcal times for pub-chairs.

### Early stages
* Update latex and word templates. Make sure that NAACL and ACL are using the same template 
* Create an overleaf template
  * Click 'Journals/Services' > 'Submit to Overleaf Gallery'

### Once workshops are determined
* Create a mailing list for book chairs for easier communication in later stages. Include: 
  * conference pub-chair alias 
  * all of the workshop chairs aliases
  * workshop organizers alias
  * SRW organizers alias
  * WiNLP alias (though they are typically not archival)
  * industry chairs alias (if applicable)
  * demo chairs alias
  * tuotrial chairs alias (though typically, the pub-chairs have done everything detailed in [002.book](002.book.md) for the tutorials)
* Create a google doc or shared spreadsheet (e.g., [from NAACL 2018](https://docs.google.com/spreadsheets/d/1LBaP9ddI-5XGDvDvB0xSxgaLgz438P5MlGNVKtQZS8w/edit?usp=sharing)) and populate with the following for the main proceedings, workshops, SRW, demos, tutorials:
  * SoftConf abbreviation
  * Title (this must be correct for getting the ISBN)
  * SIG: is this workshop to appear as a SIG on the anthology? the workshop organizers should know this
  * ISBN: a blank column to be filled in later by Pricilla
  * Url Prefix for Proceedings: i.e., Bibtex url. A blank colunm to be filled in later by Min-Yen
  * Url: workshop homepages
  * SoftConf url: for easy access
  * Optional columns for indicating if the proceedings have been finalized

### Around Submission Deadline
* Authors may email pub-chairs about formatting issues (especially with people using the Word template) or extensions (extensions are not handled by us-- direct them to the PCs). 

### Around Author Notifications Time / Prior to Camera Ready Deadline 
* Optionally update the [Camera Ready FAQ](camera-ready-faq.md). Important things we will look for will be: 
  * Author name formatting is taking from their START account information
  * The paper follows the style file!
  * Figures are readable in B&W
* Ask the PCs to point authors to the [Camera Ready FAQ](camera-ready-faq.md) guide (either in the email notification or on a blog)
* Send an email 1.5-2 months before camera ready to the Book Chairs pointing them to the following, in order to prepare for what's next
  * [001.overview.md](001.overview.md)
  * [002.book.md](002.book.md)
  * [Camera Ready FAQ](camera-ready-faq.md) for them to send to the authors
* Make sure Rich (SoftConf) initializes the camera-ready interface from the NAACL main one. This includes making sure that the `OptionalAttachment` field is present. 

### After Camera Ready Deadline
We do these for main conference proceedings. The other Book Chairs are
left to do it for their own workshops, demos, etc, but we will verify all of their as well

* Follow [002.book.md](002.book.md) for long and short papers, especially
  * Validate and correct paper metadata
  * Make sure the papers fit within the proceedings margins
  * Make sure figures don't depend on color to convey information
  * Make sure the list of paper authors (this is only for the most
    thorough pub chairs!)
  * Make sure all copyright and video release forms have been signed and
  entered
* If you find errors, you must email the authors. With the PC's and Handbook chair, determine an appropriate window to allow for revisions (~2 weeks. Making sure you have a hard cut off date will make your life easier! Make sure the START portal is officially closed after this deadline). 


### After Workshop Camera Ready
* Ensure all Book Chairs have followed [002.book.md](002.book.md)
  * Flip through their proceedings and make sure they have caught the paper formatting issues. If not, ask the organizers to email the paper authors ASAP.
  * In the past, it's best to split this effort between pub-chairs and verify the others' work :) 
* Work with the General Chair and Program Chairs to fill out their welcome messages in the front matter.
* Work with the Handbook Chair if they need changes to the proceedings order files

### Compiling the Proceedings

This phase begins after you have verified the main proceedings and all the other books in your conference: 
* [Build the ACL Web Anthology](full-aclweb-proceedings-howto.md), the results of which are posted on the [ACL Anthology](https://aclanthology.coli.uni-saarland.de/). 


## Gotchas
A list of some outstanding issues: 
* DOI instructions
* Hyperlinks not working after START compiles the targets
* Short and long paper separation instructions need to be added to the repository
