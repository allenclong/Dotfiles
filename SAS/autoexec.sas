*** Define oracle libraries;
LIBNAME WEBPRD Oracle user=p010080d	password=secret path="WEBPRD" schema=ADMP;
LIBNAME AWH Oracle path="AWHPRD" schema=AWH; *the Warehouse including Web Reporting;
*** Actuarial group library;
Libname SAgroup V9 '\\fhamisapd01\data\group';


**** Options*****;
options nosqlremerge dbidirectexec;
***Logging Options;
options nomprint nosymbolgen nomlogic; *Macro logging options;
options fullstimer; ** Display time and memory usage in log;
option sastrace = ',,,d' sastraceloc=saslog nostsuffix;
