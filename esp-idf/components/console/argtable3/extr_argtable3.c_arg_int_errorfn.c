
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* shortopts; char* longopts; char* datatype; } ;
struct arg_int {TYPE_1__ hdr; } ;
typedef int FILE ;






 int arg_print_option (int *,char const*,char const*,char const*,char*) ;
 int fprintf (int *,char*,char const*) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void arg_int_errorfn(
    struct arg_int *parent,
    FILE *fp,
    int errorcode,
    const char *argval,
    const char *progname)
{
    const char *shortopts = parent->hdr.shortopts;
    const char *longopts = parent->hdr.longopts;
    const char *datatype = parent->hdr.datatype;


    argval = argval ? argval : "";

    fprintf(fp, "%s: ", progname);
    switch(errorcode)
    {
    case 129:
        fputs("missing option ", fp);
        arg_print_option(fp, shortopts, longopts, datatype, "\n");
        break;

    case 130:
        fputs("excess option ", fp);
        arg_print_option(fp, shortopts, longopts, argval, "\n");
        break;

    case 131:
        fprintf(fp, "invalid argument \"%s\" to option ", argval);
        arg_print_option(fp, shortopts, longopts, datatype, "\n");
        break;

    case 128:
        fputs("integer overflow at option ", fp);
        arg_print_option(fp, shortopts, longopts, datatype, " ");
        fprintf(fp, "(%s is too large)\n", argval);
        break;
    }
}
