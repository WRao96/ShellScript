#!/bin/bash

mkdir 11_FE-R1_RDF
for i in `seq 200 100 1000`
do
	cp  "./""$i""K/RDFDAT" "11_FE-R1_RDF/11_FE-R1_""$i"".rdf"
done
