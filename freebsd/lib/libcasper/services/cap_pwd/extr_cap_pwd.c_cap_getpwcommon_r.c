
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uid_t ;
struct passwd {int dummy; } ;
typedef int nvlist_t ;
typedef int cap_channel_t ;


 int ERANGE ;
 int abort () ;
 int assert (int) ;
 int * cap_xfer_nvlist (int *,int *) ;
 scalar_t__ errno ;
 char* gbuffer ;
 size_t gbufsize ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_string (int *,char*,char const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int nvlist_exists_string (int *,char*) ;
 scalar_t__ nvlist_get_number (int *,char*) ;
 int passwd_resize () ;
 int passwd_unpack (int *,struct passwd*,char*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
cap_getpwcommon_r(cap_channel_t *chan, const char *cmd, const char *login,
    uid_t uid, struct passwd *pwd, char *buffer, size_t bufsize,
    struct passwd **result)
{
 nvlist_t *nvl;
 bool getpw_r;
 int error;

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "cmd", cmd);
 if (strcmp(cmd, "getpwent") == 0 || strcmp(cmd, "getpwent_r") == 0) {

 } else if (strcmp(cmd, "getpwnam") == 0 ||
     strcmp(cmd, "getpwnam_r") == 0) {
  nvlist_add_string(nvl, "name", login);
 } else if (strcmp(cmd, "getpwuid") == 0 ||
     strcmp(cmd, "getpwuid_r") == 0) {
  nvlist_add_number(nvl, "uid", (uint64_t)uid);
 } else {
  abort();
 }
 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0)) {
  assert(errno != 0);
  *result = ((void*)0);
  return (errno);
 }
 error = (int)nvlist_get_number(nvl, "error");
 if (error != 0) {
  nvlist_destroy(nvl);
  *result = ((void*)0);
  return (error);
 }

 if (!nvlist_exists_string(nvl, "pw_name")) {

  nvlist_destroy(nvl);
  *result = ((void*)0);
  return (0);
 }

 getpw_r = (strcmp(cmd, "getpwent_r") == 0 ||
     strcmp(cmd, "getpwnam_r") == 0 || strcmp(cmd, "getpwuid_r") == 0);

 for (;;) {
  error = passwd_unpack(nvl, pwd, buffer, bufsize);
  if (getpw_r || error != ERANGE)
   break;
  assert(buffer == gbuffer);
  assert(bufsize == gbufsize);
  error = passwd_resize();
  if (error != 0)
   break;

  buffer = gbuffer;
  bufsize = gbufsize;
 }

 nvlist_destroy(nvl);

 if (error == 0)
  *result = pwd;
 else
  *result = ((void*)0);

 return (error);
}
