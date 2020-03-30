#!/usr/bin/env bash

for i in {1..3}
do
  DIRNAME=`mktemp -d .XXX`
  if test $i == 1
  then
    (
      cat << 'EOC'
           _                        
           \`*-.                    
            )  _`-.                 
           .  : `. .                
           : _   '  \               
           ; *` _.   `*-._          
           `-.-'          `-.       
             ;       `       `.     
             :.       .        \    
             . \  .   :   .-'   .   
             '  `+.;  ;  '      :   
             :  '  |    ;       ;-. 
             ; '   : :`-:     _.`* ;
    [bug] .*' /  .*' ; .*`- +'  `*' 
          `*-*   `*-*  `*-*' 
EOC
    ) >> $DIRNAME/cat.txt
  fi
done
