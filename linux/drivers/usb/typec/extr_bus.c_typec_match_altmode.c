
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct typec_altmode {scalar_t__ svid; scalar_t__ mode; } ;



struct typec_altmode *typec_match_altmode(struct typec_altmode **altmodes,
       size_t n, u16 svid, u8 mode)
{
 int i;

 for (i = 0; i < n; i++) {
  if (!altmodes[i])
   break;
  if (altmodes[i]->svid == svid && altmodes[i]->mode == mode)
   return altmodes[i];
 }

 return ((void*)0);
}
