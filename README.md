# drum_solo_generator
 
~~Currently a messy bunch of Maple files.~~  Now a messy bunch of Julia files!

What you will need:
* A way of running [Jupyter](https://jupyter.org/)/iPython notebooks
* A way of running [Julia](https://julialang.org/) code embedded in such notebooks
* A way of doing something useful with ABP (ABC with pre-processing directives) files.  For example:
     * [abcpp](http://abcplus.sourceforge.net/#abcpp) for converting ABP files to ABC files 
     * [abcm2ps](https://github.com/leesavide/abcm2ps/) or [abc2svg](https://github.com/leesavide/abcm2ps/) for producing scores from ABC files
     * [abc2midi](https://ifdo.ca/~seymour/runabc/top.html) for producing MIDI files from ABC files

Once you have all that:
* Download the abptest.bat file.  (It's only a few lines; writing one for Mac/Linux should be trivial but I haven't done it yet.  Or I could just make a Julia function that does the same thing.  I should probably do that.)
* Download the percussions-JBH.abh header file which the other abc files will import.
* Pick a Jupyter notebook from the main repo directory.
* Execute cells until things start happening.  :)

TO DO:  
* clean up
     * especially, delete stuff that is not being used
     * also improve the notebook documentation!
* translate into an open source language, like Julia  (mostly done now)
     * I'd be more than happy to have help from anyone!
* Change the batch file into a Julia function?
* separate 8th note from 16th note styles (done?)
* re-organize ride patterns based on rhythm and on instrumentation (done?)
* shuffle beats
* ghost notes
* extensions
