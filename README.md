# drum_solo_generator
 
~~Currently a messy bunch of Maple files.~~  Now a messy bunch of Julia files!

What you will need:
* A way of running [Jupyter](https://jupyter.org/)/iPython notebooks
* A way of running [Julia](https://julialang.org/) code embedded in such notebooks
* A way of doing something useful with ABP (ABC with pre-processing directives) files.  For example:
     * [abcpp](http://abcplus.sourceforge.net/#abcpp) for converting ABP files to ABC files 
     * [abcm2ps](https://github.com/leesavide/abcm2ps/) or [abc2svg](https://github.com/leesavide/abcm2ps/) for producing scores from ABC files
     * [abc2midi](https://ifdo.ca/~seymour/runabc/top.html) for producing MIDI files from ABC files

TO DO:  
* clean up
     * especially, delete stuff that is not being used
* translate into an open source language, like Julia  (mostly done now)
     * I'd be more than happy to have help from anyone!
* separate 8th note from 16th note styles (done?)
* re-organize ride patterns based on rhythm and on instrumentation (done?)
* shuffle beats
* ghost notes
* extensions
