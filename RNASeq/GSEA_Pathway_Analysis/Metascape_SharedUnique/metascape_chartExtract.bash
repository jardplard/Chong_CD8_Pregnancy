#!/bin/bash

NAMECLEAN1="CD8_"
NAMECLEAN2="_Metascape"

mkdir GOcharts

for (( n=1; n<=6; n++ ));
 do 

METPATH=$(ls -d -N *CD8* | sed -n ${n}p) 
METNAME=${METPATH//$NAMECLEAN1/}
METNAME=${METNAME//$NAMECLEAN2/}  

cp $METPATH/Enrichment_GO/_Final_GO.csv GOcharts;

mv GOcharts/_Final_GO.csv GOcharts/$METNAME.csv

done

