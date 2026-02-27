msgbox: {
    
    
    .scripts: {
        ;first byte is height to draw at
        ;subsequent bytes are messages to display
        ;terminated by $ff

        ..1: db $07,
                $01, $02, $03, $04, $05, $06, $07, $00, $ff
    }
    
    
    .list: {
        ;master list of pointers to messageboxes
        
        dw msgbox_def_blank             ;0
        dw msgbox_def_intro1            ;1
        dw msgbox_def_intro2            ;2
        dw msgbox_def_intro3            ;3
        dw msgbox_def_intro4            ;4
        dw msgbox_def_intro5            ;5
        dw msgbox_def_intro6            ;6
        dw msgbox_def_intro7            ;7
    }
    
              ;"A message is 32 characters long."
    .def: {
        ..blank: {
            db " "
            db !msgboxterminator
        }
        
        ..intro1: {
            db "               *                "
            db "     BRAINTREE IN THE YARD      "
            db "    BEARING FRUIT AND LEAVES    "
            db "     ROOTS ARE UNDERGROUND      "
            db "    FEEDING FROM THE GRIEVES    "
            db "               *                "
            db !msgboxterminator
        }
        
        ..intro2: {
            db "THE                             "
            db "  GRIEVES ARE BURIED UNDERGROUND"
            db "          SURROUNDED BY THE DIRT"
            db "COMPRISED OF MANY DIFFERENT     "
            db "   THINGS LIKE LOVE AND FEAR AND"
            db "                            HURT"
            db !msgboxterminator
        }
        
        ..intro3: {
            db "WHEN THE GRIEVES HAVE DECOMPOSED"
            db "    THERE'S NOTHING THAT REMAINS"
            db "EXCEPT COMPONENTS ARE REUSED    "
            db "      AS ART AND GROWTH OF BRAIN"
            db !msgboxterminator
        }
        
        ..intro4: {
            db "THE BRAIN CAN GROW UP OUTWARDLY "
            db "          AS FAR AS EYES CAN SEE"
            db "BRANCHES NEED SOME TRIM AND     "
            db "       PRUNE TO STAY UP PROPERLY"
            db !msgboxterminator
        }
        
        ..intro5: {
            db "THOUGHTFRUIT SPROUTS OUT        "
            db "                      NATURALLY,"
            db "         RIGHT THERE ON THE TREE"
            db "THEY CAN BE PICKED AND EATEN    "
            db "WHOLE, AS LONG AS THEY ARE GREEN"
            db !msgboxterminator
        }
        
        ..intro6: {
            db "ROTTEN THOUGHTS FALL OFF THE    "
            db "   TREE AND TUMBLE TO THE GROUND"
            db "THEIR USEFULNESS CAN BE OBTAINED"
            db "WITH HELP FROM WORMS ABOUND     "
            db !msgboxterminator
        }
        
        ..intro7: {
            db "               *                "
            db "THE GRIEF OF THOUGHT CANNOT BE  "
            db "                         STOPPED"
            db "        BUT CAN BE TURNED AROUND"
            db "WITH HELP AND LOVE THE TREE WILL"
            db "                          THRIVE"
            db "      STAY PLANTED IN THE GROUND"
            db "               *                "
            db !msgboxterminator
        }
        
        ..intro8: {
            db ""
            db !msgboxterminator
        }
        
        ..intro9: {
            db ""
            db !msgboxterminator
        }
    }
}