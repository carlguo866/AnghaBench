
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct svc_req {int dummy; } ;
struct passwd {int pw_gid; int pw_name; } ;
struct TYPE_7__ {int gidlist_len; int * gidlist_val; } ;
struct TYPE_8__ {int gid; scalar_t__ minor_status; scalar_t__ major_status; scalar_t__ uid; TYPE_1__ gidlist; } ;
typedef TYPE_2__ pname_to_uid_res ;
struct TYPE_9__ {int mech; int pname; } ;
typedef TYPE_3__ pname_to_uid_args ;
typedef scalar_t__ gss_name_t ;
typedef int buf ;
typedef int bool_t ;


 int ERANGE ;
 scalar_t__ GSS_S_BAD_NAME ;
 scalar_t__ GSS_S_COMPLETE ;
 int NGROUPS ;
 int TRUE ;
 int free (char*) ;
 int getgrouplist (int ,int,int*,int*) ;
 int getpwuid_r (scalar_t__,struct passwd*,char*,size_t,struct passwd**) ;
 scalar_t__ gss_pname_to_uid (scalar_t__*,scalar_t__,int ,scalar_t__*) ;
 scalar_t__ gssd_find_resource (int ) ;
 int gssd_verbose_out (char*,...) ;
 char* malloc (size_t) ;
 int * mem_alloc (int) ;
 int memcpy (int *,int*,int) ;
 int memset (TYPE_2__*,int ,int) ;

bool_t
gssd_pname_to_uid_1_svc(pname_to_uid_args *argp, pname_to_uid_res *result, struct svc_req *rqstp)
{
 gss_name_t name = gssd_find_resource(argp->pname);
 uid_t uid;
 char buf[1024], *bufp;
 struct passwd pwd, *pw;
 size_t buflen;
 int error;
 static size_t buflen_hint = 1024;

 memset(result, 0, sizeof(*result));
 if (name) {
  result->major_status =
   gss_pname_to_uid(&result->minor_status,
       name, argp->mech, &uid);
  if (result->major_status == GSS_S_COMPLETE) {
   result->uid = uid;
   buflen = buflen_hint;
   for (;;) {
    pw = ((void*)0);
    bufp = buf;
    if (buflen > sizeof(buf))
     bufp = malloc(buflen);
    if (bufp == ((void*)0))
     break;
    error = getpwuid_r(uid, &pwd, bufp, buflen,
        &pw);
    if (error != ERANGE)
     break;
    if (buflen > sizeof(buf))
     free(bufp);
    buflen += 1024;
    if (buflen > buflen_hint)
     buflen_hint = buflen;
   }
   if (pw) {
    int len = NGROUPS;
    int groups[NGROUPS];
    result->gid = pw->pw_gid;
    getgrouplist(pw->pw_name, pw->pw_gid,
        groups, &len);
    result->gidlist.gidlist_len = len;
    result->gidlist.gidlist_val =
     mem_alloc(len * sizeof(int));
    memcpy(result->gidlist.gidlist_val, groups,
        len * sizeof(int));
    gssd_verbose_out("gssd_pname_to_uid: mapped"
        " to uid=%d, gid=%d\n", (int)result->uid,
        (int)result->gid);
   } else {
    result->gid = 65534;
    result->gidlist.gidlist_len = 0;
    result->gidlist.gidlist_val = ((void*)0);
    gssd_verbose_out("gssd_pname_to_uid: mapped"
        " to uid=%d, but no groups\n",
        (int)result->uid);
   }
   if (bufp != ((void*)0) && buflen > sizeof(buf))
    free(bufp);
  } else
   gssd_verbose_out("gssd_pname_to_uid: failed major=0x%x"
       " minor=%d\n", (unsigned int)result->major_status,
       (int)result->minor_status);
 } else {
  result->major_status = GSS_S_BAD_NAME;
  result->minor_status = 0;
  gssd_verbose_out("gssd_pname_to_uid: no name\n");
 }

 return (TRUE);
}
