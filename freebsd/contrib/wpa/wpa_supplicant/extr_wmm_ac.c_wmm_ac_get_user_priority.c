
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmm_tspec_element {int* ts_info; } ;



__attribute__((used)) static u8 wmm_ac_get_user_priority(const struct wmm_tspec_element *tspec)
{
 return (tspec->ts_info[1] >> 3) & 0x07;
}
