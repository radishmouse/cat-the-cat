#!/usr/bin/env bash

places=./hiding_places
if [ -d "$places" ]; then
	rm -rf "$places"
fi
mkdir "$places"
for i in {1..9}
do
  DIRNAME=`mktemp -d "$places/.XXX"`
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
