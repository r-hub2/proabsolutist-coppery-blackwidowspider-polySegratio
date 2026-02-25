This update is a minor fix to remove NOTEs about CITATION file and
some Rd files by using class() instead of inherits() when checking
correct object classes and finally Examples generating but not
removing temporary files.

Finally, although I have an honorary position at UQ, I retired and so
updated my email address.

From your email of 21 January 2026:

Dear maintainer,

Please see the problems shown on
<https://cran.r-project.org/web/checks/check_results_polySegratioMM.html>.

Specifically, please see the NOTEs from the check for non-standard
things in the check directory.  This check has been in place for several
years now: apparently your package was not updated in this period.

Can you please change your examples, vignettes or tests to no longer
create outputs in the check directory, typically using the session
directory instead?

Please correct before 2026-02-25 to safely retain your package on CRAN.

Best wishes,
The CRAN Team

----

To fix warnings, notes (no errors), i did the following:

	Updated email address to drpetebaker@gmail.com
	Fixed DESCRIPTION file to replace old style personList()
	Fixed CITATION file to replace old style personList()
	Changed http://mcmc-jags.sourceforge.net/ (which moved to 
	        https://mcmc-jags.sourceforge.io/) 
	Replaced all if() checking class() with inherits() to remove Warnings
	Changed .Rd files to not leave files 'test*.*' after running examples
	Converted Sweave .Rnw vignette to RMarkdown .Rmd file

My own PC is running Linux: Fedora 43 with currect release R 4.5.2 and
all packages updated

> devtools::check('~/Data/dev/polySegratio2git/polysegratio/polysegratiomm')
Duration: 22.7s
0 errors ✔ | 0 warnings ✔ | 0 notes ✔

I was getting one NOTE which mentioned the change of email address but
no other errors, notes or warnings. This NOTE has since disappeared

However, on R win-devel it is there

> devtools::check_win_devel()
* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Peter Baker <drpetebaker@gmail.com>'

New maintainer:
  Peter Baker <drpetebaker@gmail.com>
Old maintainer(s):
  Peter Baker <p.baker1@uq.edu.au>

I also tested on several RHUB2 machines

On RHUB2 all of these systems gave the message:  Status: OK

macos-arm64 R-* (any version) ,
ubuntu-release R-4.5.2,
ubuntu-next R-4.5.2 (patched) (2026-02-22 r89452),
windows R-* (any version)  
valgrind - R-devel (2026-02-23 r89469) Fedora 38

Finally, I checked reverse dependencies, which I am sure there are none.

> revdepcheck::revdep_check(num_workers = 4)

Installing DEV version of polySegratioMM
── CHECK ──────────────────────────────────────────────────────── 0 packages ──
OK: 0
BROKEN: 0
Total time: <1 min

Thanks very much!

Regards Peter
