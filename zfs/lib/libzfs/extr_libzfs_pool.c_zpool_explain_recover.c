
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int time_t ;
struct tm {int dummy; } ;
typedef int nvlist_t ;
typedef int longlong_t ;
struct TYPE_3__ {int libzfs_printerr; } ;
typedef TYPE_1__ libzfs_handle_t ;
typedef int int64_t ;


 int TEXT_DOMAIN ;
 int UINT64_MAX ;
 int ZPOOL_CONFIG_LOAD_DATA_ERRORS ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_LOAD_TIME ;
 int ZPOOL_CONFIG_REWIND_INFO ;
 int ZPOOL_CONFIG_REWIND_TIME ;
 char* dgettext (int ,char*) ;
 int * localtime_r (int *,struct tm*) ;
 int nvlist_lookup_int64 (int *,int ,int*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int*) ;
 int printf (char*,...) ;
 scalar_t__ strftime (char*,int,char*,struct tm*) ;

void
zpool_explain_recover(libzfs_handle_t *hdl, const char *name, int reason,
    nvlist_t *config)
{
 nvlist_t *nv = ((void*)0);
 int64_t loss = -1;
 uint64_t edata = UINT64_MAX;
 uint64_t rewindto;
 struct tm t;
 char timestr[128];

 if (!hdl->libzfs_printerr)
  return;

 if (reason >= 0)
  (void) printf(dgettext(TEXT_DOMAIN, "action: "));
 else
  (void) printf(dgettext(TEXT_DOMAIN, "\t"));


 if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_LOAD_INFO, &nv) != 0 ||
     nvlist_lookup_nvlist(nv, ZPOOL_CONFIG_REWIND_INFO, &nv) != 0 ||
     nvlist_lookup_uint64(nv, ZPOOL_CONFIG_LOAD_TIME, &rewindto) != 0)
  goto no_info;

 (void) nvlist_lookup_int64(nv, ZPOOL_CONFIG_REWIND_TIME, &loss);
 (void) nvlist_lookup_uint64(nv, ZPOOL_CONFIG_LOAD_DATA_ERRORS,
     &edata);

 (void) printf(dgettext(TEXT_DOMAIN,
     "Recovery is possible, but will result in some data loss.\n"));

 if (localtime_r((time_t *)&rewindto, &t) != ((void*)0) &&
     strftime(timestr, 128, "%c", &t) != 0) {
  (void) printf(dgettext(TEXT_DOMAIN,
      "\tReturning the pool to its state as of %s\n"
      "\tshould correct the problem.  "),
      timestr);
 } else {
  (void) printf(dgettext(TEXT_DOMAIN,
      "\tReverting the pool to an earlier state "
      "should correct the problem.\n\t"));
 }

 if (loss > 120) {
  (void) printf(dgettext(TEXT_DOMAIN,
      "Approximately %lld minutes of data\n"
      "\tmust be discarded, irreversibly.  "),
      ((longlong_t)loss + 30) / 60);
 } else if (loss > 0) {
  (void) printf(dgettext(TEXT_DOMAIN,
      "Approximately %lld seconds of data\n"
      "\tmust be discarded, irreversibly.  "),
      (longlong_t)loss);
 }
 if (edata != 0 && edata != UINT64_MAX) {
  if (edata == 1) {
   (void) printf(dgettext(TEXT_DOMAIN,
       "After rewind, at least\n"
       "\tone persistent user-data error will remain.  "));
  } else {
   (void) printf(dgettext(TEXT_DOMAIN,
       "After rewind, several\n"
       "\tpersistent user-data errors will remain.  "));
  }
 }
 (void) printf(dgettext(TEXT_DOMAIN,
     "Recovery can be attempted\n\tby executing 'zpool %s -F %s'.  "),
     reason >= 0 ? "clear" : "import", name);

 (void) printf(dgettext(TEXT_DOMAIN,
     "A scrub of the pool\n"
     "\tis strongly recommended after recovery.\n"));
 return;

no_info:
 (void) printf(dgettext(TEXT_DOMAIN,
     "Destroy and re-create the pool from\n\ta backup source.\n"));
}
