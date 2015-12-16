Add a book to a table (Dashboard Widget for WordPress)
======================================================

1. Import the table in MySQL.
2. Zip and install libri.php.

#### BibTex

This file will format a sql query as a *BibTex* file. Perhaps a PHP or Python class would do a better job.

The format looks like this if the file is made by Pybliographer:

~~~~
@Book{RWDHandbook,
  Author         = {{Future Publishing}},
  Title          = {The {R}esponsive {W}eb {D}esign {H}andbook},
  Publisher      = {Future Publishing},
  year           = 2014
}
~~~~~

The present plugin will format the bibliography like this:

~~~~~
@Book{WELL_1784, Author={Welling, G. von},
Title={Opus Mago-Cabbalisticum et Theosophicum},
Publisher={Frankfurt und Leipzig},
Year=1784}
~~~~~

## The BibTex format

On *Bibtex.org* see:

* [BibTeX Format Description](http://www.bibtex.org/Format/)
* [How to use BibTeX](http://www.bibtex.org/Using/)
* [LaTeX inside BibTeX](http://www.bibtex.org/SpecialSymbols/)

## BibTex Styling

There are several styles:

* [BibTex Styles](http://www.cs.stir.ac.uk/~kjt/software/latex/showbst.html)
