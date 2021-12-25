#utility function, insert one string into another
function insert(
    s::String,
    pos::Integer,
    sub::String)
    return s[1:pos] * sub * s[pos+1:end]
end
  
#utility thingy, returns name of function is it called from
macro functionName()
    return quote
        st = stacktrace(backtrace())
        myf = ""
        for frm in st
            funcname = frm.func
            if frm.func != :backtrace && frm.func!= Symbol("macro expansion")
                myf = frm.func
                break
            end
        end
        #println("Running function $(myf)")
        String(myf)
    end
end

#Converts ABP file to score and MIDI and displays/plays it
function abptest(fname)
    shortname = splitext(fname)[1]
    run(`abcpp $fname $shortname-ps.abc`)
    run(`abcm2ps.exe -X $shortname-ps.abc -O $shortname.xhtml`)
    rm("$shortname-ps.abc")
    run(`abcpp -MIDI $fname $shortname-midi.abc`)
    run(`abc2midi.exe $shortname-midi.abc -o $shortname.mid`)
    rm("$shortname-midi.abc")
    run(`cmd /C start $shortname.mid`)
    run(`cmd /C start $shortname.xhtml`)
end

# constructs header for abp file
function makeppheader(title::String, composer::String, date::String, meter::String, feel::String, tempo::Int)
    s = """%%abc-include percussions-JBH.abh
    
    I:linebreak \$
    
    #ifdef MIDI
    #define !>! \"[I:volinc 50]\"
    #define !Q! \"[I:vol 20]\" 
                    %%%ghost
    #define !U! \"[I:vol 40]\" 
                    %%%unaccent
    #define !N! "[I:volinc -25]" 
                %%%tenuto for trash hat
    #else
    #define !N! "\\\"^_\\\"" 
                    %%%tenuto
    #define !Q! !(.!!).! 
                    %%%ghost
    #define !U! !anti!  
                    %%%unaccent
    #endif
    
    X:1
    T:$title
    C:$composer
    O:$date
    M:$meter
    L:1/8
    Q:\"$feel\" 1/4=$tempo
    K:none clef=perc
    [V:1 clef=perc, stem=up]     % activate abc2xml.py map
    %%voicemap drummap  % activate abcm2ps/abc2svg map
    %%MIDI channel 10   % activate abc2midi map
    %%MIDI program 0
    %%flatbeams
    %%propagate-accidentals not
    %%pos ornament up
    %%ornament up
    %%MIDI fermatafixed
    """
    return(s)
end