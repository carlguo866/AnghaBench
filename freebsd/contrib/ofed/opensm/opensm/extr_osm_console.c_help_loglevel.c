
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int OSM_LOG_DEBUG ;
 int OSM_LOG_DEFAULT_LEVEL ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_FRAMES ;
 int OSM_LOG_FUNCS ;
 int OSM_LOG_INFO ;
 int OSM_LOG_NONE ;
 int OSM_LOG_ROUTING ;
 int OSM_LOG_SYS ;
 int OSM_LOG_VERBOSE ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void help_loglevel(FILE * out, int detail)
{
 fprintf(out, "loglevel [<log-level>]\n");
 if (detail) {
  fprintf(out, "   log-level is OR'ed from the following\n");
  fprintf(out, "   OSM_LOG_NONE             0x%02X\n",
   OSM_LOG_NONE);
  fprintf(out, "   OSM_LOG_ERROR            0x%02X\n",
   OSM_LOG_ERROR);
  fprintf(out, "   OSM_LOG_INFO             0x%02X\n",
   OSM_LOG_INFO);
  fprintf(out, "   OSM_LOG_VERBOSE          0x%02X\n",
   OSM_LOG_VERBOSE);
  fprintf(out, "   OSM_LOG_DEBUG            0x%02X\n",
   OSM_LOG_DEBUG);
  fprintf(out, "   OSM_LOG_FUNCS            0x%02X\n",
   OSM_LOG_FUNCS);
  fprintf(out, "   OSM_LOG_FRAMES           0x%02X\n",
   OSM_LOG_FRAMES);
  fprintf(out, "   OSM_LOG_ROUTING          0x%02X\n",
   OSM_LOG_ROUTING);
  fprintf(out, "   OSM_LOG_SYS              0x%02X\n",
   OSM_LOG_SYS);
  fprintf(out, "\n");
  fprintf(out, "   OSM_LOG_DEFAULT_LEVEL    0x%02X\n",
   OSM_LOG_DEFAULT_LEVEL);
 }
}
