
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
usage(const char *progname)
{
 printf(_("%s displays control information of a PostgreSQL database cluster.\n\n"), progname);
 printf(_("Usage:\n"));
 printf(_("  %s [OPTION] [DATADIR]\n"), progname);
 printf(_("\nOptions:\n"));
 printf(_(" [-D, --pgdata=]DATADIR  data directory\n"));
 printf(_("  -V, --version          output version information, then exit\n"));
 printf(_("  -?, --help             show this help, then exit\n"));
 printf(_("\nIf no data directory (DATADIR) is specified, "
    "the environment variable PGDATA\nis used.\n\n"));
 printf(_("Report bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}
