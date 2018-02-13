
**** Options*****;
options nosqlremerge dbidirectexec;
*options norlang; *rlang turns on support to R language interfaces. Must be at startup;
***Logging Options;
options nomprint nosymbolgen nomlogic; *Macro logging options;
options fullstimer; ** Display time and memory usage in log;
option sastrace = ',,,d' sastraceloc=saslog nostsuffix;
*option sastrace = ',,,s' sastraceloc=saslog nostsuffix;
*option sastrace=OFF;

***Display Options;
/*options LineSize=98; *Lines of log and output. Default=98;*/
/*options pagesize=80; *Number of lines per printed page of output. Def=55;*/
/*options sortsize=4G;*4294967296 ;*=2^32. Size parameter for Proc Sort. Default=1073741824 = 2^30;*/
*options Memsize=16G; *Memory Limit for SAS session. Originally 58527033600, which is too big>32GB. ;
*WARNING 30-12: SAS option MEMSIZE is valid only at startup of the SAS System. The SAS option is 
      ignored.;

*options RealMemsize=0; *see help ;

*** Turn on autocall library;
option mautosource;
*options sasautos=(sasautos mymacros)
		mautosource;

/****Memory and Disk usage options;*/
/*options Bufno=0; *Number of buffers available for each data set. Default=1.;*/
/*options BufSize=0; *Buffer size. Default=8000; *0 allows the engine to pick to optimize based on observation size.;*/


/* Magic formula
;*';*";*/;

