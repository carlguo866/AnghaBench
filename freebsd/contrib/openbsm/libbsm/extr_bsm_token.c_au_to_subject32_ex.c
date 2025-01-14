
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef int u_int32_t ;
typedef int u_char ;
typedef int token_t ;
typedef int pid_t ;
typedef int gid_t ;
struct TYPE_3__ {int * at_addr; int at_type; int at_port; } ;
typedef TYPE_1__ au_tid_addr_t ;
typedef int au_id_t ;
typedef int au_asid_t ;


 int ADD_MEM (int *,int *,int) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT32 (int *,int ) ;
 int AUT_SUBJECT32_EX ;
 int AU_IPv4 ;
 int AU_IPv6 ;
 int EINVAL ;
 int GET_TOKEN_AREA (int *,int *,int) ;
 int errno ;

token_t *
au_to_subject32_ex(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid,
    gid_t rgid, pid_t pid, au_asid_t sid, au_tid_addr_t *tid)
{
 token_t *t;
 u_char *dptr = ((void*)0);

 if (tid->at_type == AU_IPv4)
  GET_TOKEN_AREA(t, dptr, sizeof(u_char) + 10 *
      sizeof(u_int32_t));
 else if (tid->at_type == AU_IPv6)
  GET_TOKEN_AREA(t, dptr, sizeof(u_char) + 13 *
      sizeof(u_int32_t));
 else {
  errno = EINVAL;
  return (((void*)0));
 }
 if (t == ((void*)0))
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_SUBJECT32_EX);
 ADD_U_INT32(dptr, auid);
 ADD_U_INT32(dptr, euid);
 ADD_U_INT32(dptr, egid);
 ADD_U_INT32(dptr, ruid);
 ADD_U_INT32(dptr, rgid);
 ADD_U_INT32(dptr, pid);
 ADD_U_INT32(dptr, sid);
 ADD_U_INT32(dptr, tid->at_port);
 ADD_U_INT32(dptr, tid->at_type);
 if (tid->at_type == AU_IPv6)
  ADD_MEM(dptr, &tid->at_addr[0], 4 * sizeof(u_int32_t));
 else
  ADD_MEM(dptr, &tid->at_addr[0], sizeof(u_int32_t));

 return (t);
}
