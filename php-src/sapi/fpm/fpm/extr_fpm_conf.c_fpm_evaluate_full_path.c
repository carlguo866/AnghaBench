
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpm_worker_pool_s {TYPE_1__* config; } ;
struct TYPE_4__ {char* prefix; } ;
struct TYPE_3__ {char* prefix; } ;


 char* PHP_PREFIX ;
 int ZLOG_ERROR ;
 int efree (char*) ;
 TYPE_2__ fpm_globals ;
 int free (char*) ;
 int spprintf (char**,int ,char*,char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 int zlog (int ,char*) ;

__attribute__((used)) static int fpm_evaluate_full_path(char **path, struct fpm_worker_pool_s *wp, char *default_prefix, int expand)
{
 char *prefix = ((void*)0);
 char *full_path;

 if (!path || !*path || **path == '/') {
  return 0;
 }

 if (wp && wp->config) {
  prefix = wp->config->prefix;
 }


 if (prefix == ((void*)0)) {
  prefix = fpm_globals.prefix;
 }


 if (prefix == ((void*)0)) {
  prefix = default_prefix ? default_prefix : PHP_PREFIX;
 }

 if (expand) {
  char *tmp;
  tmp = strstr(*path, "$prefix");
  if (tmp != ((void*)0)) {

   if (tmp != *path) {
    zlog(ZLOG_ERROR, "'$prefix' must be use at the beginning of the value");
    return -1;
   }

   if (strlen(*path) > strlen("$prefix")) {
    free(*path);
    tmp = strdup((*path) + strlen("$prefix"));
    *path = tmp;
   } else {
    free(*path);
    *path = ((void*)0);
   }
  }
 }

 if (*path) {
  spprintf(&full_path, 0, "%s/%s", prefix, *path);
  free(*path);
  *path = strdup(full_path);
  efree(full_path);
 } else {
  *path = strdup(prefix);
 }

 if (**path != '/' && wp != ((void*)0) && wp->config) {
  return fpm_evaluate_full_path(path, ((void*)0), default_prefix, expand);
 }
 return 0;
}
