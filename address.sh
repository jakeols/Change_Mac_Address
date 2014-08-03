#!/bin/bash
RANGE=255

number=$RANDOM
numbera=$RANDOM
numberb=$RANDOM
numberc=$RANDOM
numberd=$RANDOM
numbere=$RANDOM

let "number %= $RANGE"
let "numbera %= $RANGE"
let "numberb %= $RANGE"
let "numberc %= $RANGE"
let "numberd %= $RANGE"
let "numbere %= $RANGE"

octeta=`echo "obase=16;$number" | bc`
octetb=`echo "obase=16;$numbera" | bc`
octetc=`echo "obase=16;$numberb" | bc`
octetd=`echo "obase=16;$numberc" | bc`
octete=`echo "obase=16;$numberd" | bc`
octetf=`echo "obase=16;$numbere" | bc`

macadd="${octeta}-${octetb}-${octetc}-${octetd}-${octete}-${octetf}"

echo $macadd