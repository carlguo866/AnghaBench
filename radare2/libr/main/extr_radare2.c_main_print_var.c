
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R2_HOME_CACHEDIR ;
 int R2_HOME_CONFIGDIR ;
 int R2_HOME_DATADIR ;
 int R2_HOME_PLUGINS ;
 int R2_HOME_ZIGNS ;
 int R2_INCDIR ;
 int R2_LIBDIR ;
 int R2_PLUGINS ;
 char* R2_PREFIX ;
 int R2_SDB_MAGIC ;
 char* R_LIB_EXT ;
 int free (char*) ;
 int printf (char*,char const*,...) ;
 char* r_str_home (int ) ;
 char* r_str_r2_prefix (int ) ;
 int strcmp (char const*,char const*) ;
 char* strdup (int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int main_print_var(const char *var_name) {
 int i = 0;




 char *incdir = strdup (R2_INCDIR);
 char *libdir = strdup (R2_LIBDIR);

 char *confighome = r_str_home (R2_HOME_CONFIGDIR);
 char *datahome = r_str_home (R2_HOME_DATADIR);
 char *cachehome = r_str_home (R2_HOME_CACHEDIR);
 char *homeplugins = r_str_home (R2_HOME_PLUGINS);
 char *homezigns = r_str_home (R2_HOME_ZIGNS);
 char *plugins = r_str_r2_prefix (R2_PLUGINS);
 char *magicpath = r_str_r2_prefix (R2_SDB_MAGIC);
 struct radare2_var_t {
  const char *name;
  const char *value;
 } r2_vars[] = {
  { "R2_PREFIX", R2_PREFIX },
  { "R2_MAGICPATH", magicpath },
  { "R2_PREFIX", R2_PREFIX },
  { "R2_INCDIR", incdir },
  { "R2_LIBDIR", libdir },
  { "R2_LIBEXT", R_LIB_EXT },
  { "R2_RCONFIGHOME", confighome },
  { "R2_RDATAHOME", datahome },
  { "R2_RCACHEHOME", cachehome },
  { "R2_LIBR_PLUGINS", plugins },
  { "R2_USER_PLUGINS", homeplugins },
  { "R2_USER_ZIGNS", homezigns },
  { ((void*)0), ((void*)0) }
 };
 int delta = 0;
 if (var_name && strncmp (var_name, "R2_", 3)) {
  delta = 3;
 }
 if (var_name) {
  while (r2_vars[i].name) {
   if (!strcmp (r2_vars[i].name + delta, var_name)) {
    printf ("%s\n", r2_vars[i].value);
    break;
   }
   i++;
  }
 } else {
  while (r2_vars[i].name) {
   printf ("%s=%s\n", r2_vars[i].name, r2_vars[i].value);
   i++;
  }
 }
 free (incdir);
 free (libdir);
 free (confighome);
 free (datahome);
 free (cachehome);
 free (homeplugins);
 free (homezigns);
 free (plugins);
 free (magicpath);
 return 0;
}
