# drum_solo_generator
 
~~Currently a messy bunch of Maple files.~~  Now a messy bunch of Julia files!

If you have comments on the authenticity of the style choices I have made, I would be interested to hear them!

What you will need:
* A way of running [Jupyter](https://jupyter.org/)/iPython notebooks
* A way of running [Julia](https://julialang.org/) code embedded in such notebooks
* A way of doing something useful with ABP (ABC with pre-processing directives) files.  For example:
     * [abcpp](http://abcplus.sourceforge.net/#abcpp) for converting ABP files to ABC files 
     * [abcm2ps](https://github.com/leesavide/abcm2ps/) or [abc2svg](https://github.com/leesavide/abcm2ps/) for producing scores from ABC files
     * [abc2midi](https://ifdo.ca/~seymour/runabc/top.html) for producing MIDI files from ABC files

Once you have all that:
* ~~Download the abptest.bat file.  (It's only a few lines; writing one for Mac/Linux should be trivial but I haven't done it yet.  Or I could just make a Julia function that does the same thing.  I should probably do that.)~~\
Done for all feels?  Still only works for Windows "out of the box" but shouldn't be hard to rewrite.
* Put the `markov-drum-utilities.jl` file somewhere the Jupyter notebooks can access it.
* Download the percussions-JBH.abh header file which the other abc files will import.
* Pick a Jupyter notebook from the main repo directory.
    * Currently working and up to date: 
         * `markov_multitime_ghost.ipnyb`: consolidated notebook for:
			* 8th note ride patterns, 16th note bass feel with or without ghost snares.  Rock, funk, and disco versions
			* 16th note ride patterns, 16th note bass feel with or without ghost snares.  Rock, funk, and disco versions
			* half-time shuffle patterns with or without ghost snares but not triplet support rhythms
			* 6/8 shuffle patterns with or without ghost snares but not triplet support rhythms
         * `markov16latin16ghost-unisonfill.ipnyb` ("Latin" feel, with unison fills instead of linear.  Ghost snares not implemented yet.)
     * In progress:    
        * `markov16shuffle16ghost.ipnyb` (half-time shuffle with triplet support)
* Execute cells until things start happening.  :)

TO DO:  
* clean up
     * especially, delete stuff that is not being used
     * also improve the notebook documentation!
* translate into an open source language, like Julia  (mostly done now)
     * I'd be more than happy to have help from anyone!
     * still need to do:  `markovlatin-abc.mw` (may not be useful anymore?)
* Change the batch file into a Julia function?  (Done?)
* separate 8th note from 16th note styles (done?)
* re-organize ride patterns based on rhythm and on instrumentation (done?)
* shuffle beats (in progress)
* ghost notes (sounding pretty good!)
* keep improving the "trash hat" sound (in progress)
* interpolation between styles (in progress)
* displaced backbeats
	* including better playability assurance for snare drum-utilities
* other sounds on backbeat
	* introduces even more playability issues!
* more ornaments (rolls, drags, flams, etc.)
