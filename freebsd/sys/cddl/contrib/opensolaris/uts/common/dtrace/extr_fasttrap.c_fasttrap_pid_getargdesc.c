
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t ftp_nargs; int* ftp_argmap; char* ftp_ntypes; char* ftp_xtypes; TYPE_1__* ftp_prov; } ;
typedef TYPE_2__ fasttrap_probe_t ;
typedef int dtrace_id_t ;
struct TYPE_7__ {char* dtargd_native; char* dtargd_xlate; size_t dtargd_ndx; } ;
typedef TYPE_3__ dtrace_argdesc_t ;
struct TYPE_5__ {scalar_t__ ftp_retired; } ;


 int ASSERT (int) ;
 size_t DTRACE_ARGNONE ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
fasttrap_pid_getargdesc(void *arg, dtrace_id_t id, void *parg,
    dtrace_argdesc_t *desc)
{
 fasttrap_probe_t *probe = parg;
 char *str;
 int i, ndx;

 desc->dtargd_native[0] = '\0';
 desc->dtargd_xlate[0] = '\0';

 if (probe->ftp_prov->ftp_retired != 0 ||
     desc->dtargd_ndx >= probe->ftp_nargs) {
  desc->dtargd_ndx = DTRACE_ARGNONE;
  return;
 }

 ndx = (probe->ftp_argmap != ((void*)0)) ?
     probe->ftp_argmap[desc->dtargd_ndx] : desc->dtargd_ndx;

 str = probe->ftp_ntypes;
 for (i = 0; i < ndx; i++) {
  str += strlen(str) + 1;
 }

 ASSERT(strlen(str + 1) < sizeof (desc->dtargd_native));
 (void) strcpy(desc->dtargd_native, str);

 if (probe->ftp_xtypes == ((void*)0))
  return;

 str = probe->ftp_xtypes;
 for (i = 0; i < desc->dtargd_ndx; i++) {
  str += strlen(str) + 1;
 }

 ASSERT(strlen(str + 1) < sizeof (desc->dtargd_xlate));
 (void) strcpy(desc->dtargd_xlate, str);
}
