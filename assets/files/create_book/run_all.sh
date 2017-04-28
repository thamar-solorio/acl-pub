#!/bin/bash
# Author: mmitchellai
# Last updated: 27.April.2017


# Files for Text::BibTex are at
#http://search.cpan.org/~gward/Text-BibTeX-0.34"
#http://search.cpan.org/CPAN/authors/id/G/GW/GWARD/Text-BibTeX-0.34.tar.gz
#http://www.ctan.org/tex-archive/biblio/bibtex/utils/btOOL/ ## This one also has the btparse dependency.
tar xvf Text-BibTeX-0.34.tar.gz
tar xvf btparse-0.33.tar.gz
cd Text-BibTeX-0.34
perl Makefile.PL
make
make install
