#!/bin/sh -l

inputs=${@:1:$#-1}
output=${@: -1}

java -jar jacococli.jar merge $inputs --destfile $output
java -jar jacococli.jar report $output --classfiles target/classes --html target/site/jacoco-final --xml target/site/jacoco/jacoco-final.xml
