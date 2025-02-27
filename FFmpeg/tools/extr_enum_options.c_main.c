
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_usage () ;
 int show_codec_opts () ;
 int show_format_opts () ;
 int strcmp (char*,char*) ;

int main(int argc, char **argv)
{
    if (argc < 2)
        print_usage();

    if (!strcmp(argv[1], "format"))
        show_format_opts();
    else if (!strcmp(argv[1], "codec"))
        show_codec_opts();
    else
        print_usage();

    return 0;
}
