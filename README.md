# multifox.sh
Simple bash script to run several instanses of [FOX](https://fox.vincefn.net/) (free objects for crystallography) on a server without X.

## Usage

```
$ multifox.sh p input.xml n nbrun
```
"p" is number of processes, "n" (number of trials per run) and "nbrun" (number of runs)  are passed to Fox-nogui.

Script requires Fox-nogui in the PATH. As Fox-nogui operates only XML input files don't forget to unzip the .xmlgz file created by (GUI) FOX. 
```
$ cp input.xmlgz input.xml.gz
$ gunzip input.xml.gz
```
Script creates a directory for every FOX process. You can call foxsort.sh in the directory containing the input file to find the best results.
