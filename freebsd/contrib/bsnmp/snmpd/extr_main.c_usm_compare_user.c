
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__* sec_name; } ;
struct usm_user {scalar_t__ user_engine_len; scalar_t__* user_engine_id; TYPE_1__ suser; } ;


 size_t strlen (scalar_t__*) ;

__attribute__((used)) static int
usm_compare_user(struct usm_user *u1, struct usm_user *u2)
{
 uint32_t i;

 if (u1->user_engine_len < u2->user_engine_len)
  return (-1);
 if (u1->user_engine_len > u2->user_engine_len)
  return (1);

 for (i = 0; i < u1->user_engine_len; i++) {
  if (u1->user_engine_id[i] < u2->user_engine_id[i])
   return (-1);
  if (u1->user_engine_id[i] > u2->user_engine_id[i])
   return (1);
 }

 if (strlen(u1->suser.sec_name) < strlen(u2->suser.sec_name))
  return (-1);
 if (strlen(u1->suser.sec_name) > strlen(u2->suser.sec_name))
  return (1);

 for (i = 0; i < strlen(u1->suser.sec_name); i++) {
  if (u1->suser.sec_name[i] < u2->suser.sec_name[i])
   return (-1);
  if (u1->suser.sec_name[i] > u2->suser.sec_name[i])
   return (1);
 }

 return (0);
}
