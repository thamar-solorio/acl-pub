As of Feb. 12th, 2017, the “Notes about Latex PDF” updates still need to be done on the acl2017.tex document.

From:  M Mitchell <margarmitchell@gmail.com>

====

Hyperlinked assuming it will appear in http://acl2017.org/downloads/acl17- word.zip. 

I went through both docs with a somewhat finer-grained comb, to sync the documents up.  

One strong discrepancy I noticed is that the "Multiple Submission Policy" -- including handling of arxiv -- is not there.  Should I remove this from the Word doc as well?

Note that I haven't printed this out yet, since I don't currently have access to A4 paper -- it should be checked.

Updates and other Discrepancies/Notes listed below:

=== ACL Word 2017 Main Updates ===
- Updated MS Word Template for A4 setting.
- Updated Ruler for A4, simplified how Ruler works (with same look).
- Provided instructions on formatting for A4 within Word.
- Added DOI instructions, formatting.
- Added hyperlinks and DOI links, instructions to preserving when exporting to PDF.
- Decided that there would no longer be the exception the Appendices appear below References "unless they contain references"; let's just say they always appear below References.
- Updated MS Word Template so that an empty page is no longer added or deleted when adding or deleting content on first page (Ref: Issue #4).
- Updated Ruler in MS Word so that it is no longer a large table, but instead two small tables flushed with the sides of the page to avoid accidently selecting the ruler when trying to select the text.
- Updated MS Word positioning of line numbers and items on the first page to be more closely aligned with latex format. 

=== Notes about Latex PDF ===
- Abstract text should be in 10pt.  Looks like it might be 11pt in Latex; maybe check.
- Fix consistency for "ACL-2017" vs "ACL 2017"
- Mixing of cm and in.  Do we want this to all be cm?
- Missing example of a figure.
- "printed ruler which should be presented" --> "printed ruler that should be present"
- "NAACL-2017 by Margaret Mitchell" --> "NAACL-2016 by Margaret Mitchell"
- Citation doesn't appear correctly:
    A list of abbreviations for common computer science journals can be found in the ACM Computing Reviews (for Computing Machinery, 1983). 
    In Word, I changed this to:
    A list of abbreviations for common computer science journals can be found in the Association for Computing Machinery (1983) Computing Reviews.
- "Reviewers: note" --> "Reviewers:  Note"
- "(e.g., the first paragraph on this page ends at mark 114.5). " --> "(e.g., this paragraph ends at mark 116.5). "
- "These files are all available at acl2017.org/index.php?article id=9"  --> "These files are all available at http://acl2017.org/downloads/acl17-latex.zip.  A Microsoft Word template file (acl17-word.docx) and example submission pdf (acl17-word.pdf) is available at http://acl2017.org/downloads/acl17-word.zip."
- "Center the title, author’s name(s) and affiliation(s) across both columns." --> "Center the title, author name(s) and affiliation(s) across both columns (or, in the case of initial submission, space for the names). "
- "see Table 1) " --> "see Table 1.)" 
- "then the author’s names(s), and  the affiliation on the following line. " --> "then the author names(s), and the affiliation(s) on the following line."
- "electronical" --> "electronic"
- "Do not include page numbers.
Indent: When starting a new paragraph. Use 11 points for text and subsection headings, 12 points for section headings and 15 points for the title. " --> remove "Do not include page numbers."; re-write:  "Use 11 points for text and subsection headings, 12 points for section headings and 15 points for the title.  Indent when starting a new paragraph, about 0.4 cm. 
- "Indent" subsubsection containing Headers information (in next subsection); sync.
- "Collapse multiple citations as in (Gusfield, 1997; Aho and Ullman, 1972)." is repeated twice
- "Gusfield (1997)" --> Is the full "Gusfield" meant to be a hyperlink as well?  The example in Table 3 (second row) suggests maybe it's supposed to be. 
- "BibTEXrecords" --> "BibTEX records"
- "place the section before any Appendices, unless they contain references. " --> "place the section before any Appendices."
- "Appendices: Appendices, if any, directly follow the text and the references (but see above)." --> Remove the "bust see above"
- "3.9 Graphics   
Illustrations: Place figures, tables, and photographs" --> Tables aren't Illustrations or Graphics, and photographs should be within a Figure.  In the Word document, I changed to "Placement:  Place figures and tables..."  The instructions are somewhat different; check out difference to sync up.
- The word "illustration" keeps coming up --> Change to "Tables and Figures" (?)
- “Figure 1. Caption of the Figure.” “Table 1. Caption of the Table.”  
" --> Change, it's formatted with a colon, e.g., Figure 1:
- No mention of Equation formatting.  (Sec. 3.10 in Word doc)
- "Here we give a simple criterion on your colored figures, if your paper has to be printed in black and white, then you must assure that every curves or points in your figures can be still clearly distinguished. " --> "A simple criterion: All curves and points in your figures should be clearly distinguishable without color."
