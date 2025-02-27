
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* basename (char const*) ;
 int printf (char*,...) ;

__attribute__((used)) static void usage(const char *name)
{
 printf("%s -s [-vVd] [-S size] [-C count] [-a addr] [-p port]\n",
        basename(name));
 printf("%s -c [-vVd] [-S size] [-C count] [-I addr] -a addr [-p port]\n",
        basename(name));
 printf("\t-c\t\tclient side\n");
 printf("\t-I\t\tSource address to bind to for client.\n");
 printf("\t-s\t\tserver side.  To bind to any address with IPv6 use -a ::0\n");
 printf("\t-v\t\tdisplay ping data to stdout\n");
 printf("\t-V\t\tvalidate ping data\n");
 printf("\t-d\t\tdebug printfs\n");
 printf("\t-S size \tping data size\n");
 printf("\t-C count\tping count times\n");
 printf("\t-a addr\t\taddress\n");
 printf("\t-p port\t\tport\n");
 printf("\t-P\t\tpersistent server mode allowing multiple connections\n");
}
