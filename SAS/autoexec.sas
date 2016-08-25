
Libname SAgroup V9 '\\fhamisapd01\data\group';
/*LIBNAME DADM01 Oracle path="AWHPRD" schema=ADMP;   *the Actuarial Datamart;*/
LIBNAME WEBPRD Oracle user=p010080d	password=secret path="WEBPRD" schema=ADMP;
LIBNAME AWH Oracle path="AWHPRD" schema=AWH; *the Warehouse including Web Reporting;
/**/
/*LIBNAME AWHDEV Oracle path="AWHDEV" schema=AWH;* user="p010080d" password=p010080d;*/
/*Libname WEBDEV Oracle path="WEBDEV" schema=ADMP user=p010080d password=p010080d;*/
LIBNAME AWHAPPDV Oracle path="AWHAPPDV" schema=AWH ;*user=p010080d password=p010080d;
/*LIBNAME AWHAPPDV Oracle path="AWHAPPDV" schema=ADMP ;*user=p010080d password=p010080d;*/
/**/
/*LIBNAME AWHAPPTS Oracle path="AWHAPPTS" user=p010080d password=p010080d; *user=tsocl09 password=tsocl09;*/
/**/
/*LIBNAME AWHQAS Oracle path="AWHQAS" schema=AWH;* user="p010080d" password=p010080d;*/
/*Libname AWHTST Oracle path="AWHTST" schema=AWH;* user="p010080d" password=p010080d;
Libname ADMTST Oracle path="AWHTST" schema=ADMP;* user="p010080d" password=p010080d;
LIBNAME PSPRD Oracle path="PSPRD" schema=SYSADM user=p010080d password=psf80dprd;
*/



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
*filename mymacros 'H:\Users\p010080d\Emblem\SasMacro';
*options sasautos=(sasautos mymacros)
		mautosource;

/****Memory and Disk usage options;*/
/*options Bufno=0; *Number of buffers available for each data set. Default=1.;*/
/*options BufSize=0; *Buffer size. Default=8000; *0 allows the engine to pick to optimize based on observation size.;*/


*%let claimjoin= 
	join awh.wr_line_d l on t.line_dim_key = l.line_dim_key
	join awh.wr_claimant_d clmt 
			on l.line_claimant_dim_key = clmt.clmt_claimant_dim_key
			and l.line_claim_dim_key = clmt.clmt_claim_dim_key
	join awh.wr_claim_d c on clmt.clmt_claim_dim_key = c.clm_claim_dim_key
	join awh.wr_plcy_d p on c.clm_plcy_dim_key = p.plcy_dim_key
;
/* Magic formula
;*';*";*/;

