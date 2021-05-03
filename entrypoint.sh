#!/bin/sh -l

inputs=${@:1:$#-1}
output=${@: -1}

java -jar org.jacoco.cli-0.8.6-nodeps.jar merge $inputs --destfile $output
