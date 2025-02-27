
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BSNMPGET ;
 scalar_t__ BSNMPSET ;
 scalar_t__ BSNMPWALK ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*) ;
 scalar_t__ program ;
 char* program_name ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
"Usage:\n"
"%s %s [-A options] [-b buffersize] [-C options] [-I options]\n"
"\t[-i filelist] [-l filename]%s [-o output] [-P options]\n"
"\t%s[-r retries] [-s [trans::][community@][server][:port]]\n"
"\t[-t timeout] [-U options] [-v version]%s\n",
 program_name,
 (program == BSNMPGET) ? "[-aDdehnK]" :
     (program == BSNMPWALK) ? "[-dhnK]" :
     (program == BSNMPSET) ? "[-adehnK]" :
     "",
 (program == BSNMPGET || program == BSNMPWALK) ?
 " [-M max-repetitions] [-N non-repeaters]" : "",
 (program == BSNMPGET || program == BSNMPWALK) ? "[-p pdu] " : "",
 (program == BSNMPGET) ? " OID [OID ...]" :
     (program == BSNMPWALK || program == BSNMPSET) ? " [OID ...]" :
     ""
 );
}
