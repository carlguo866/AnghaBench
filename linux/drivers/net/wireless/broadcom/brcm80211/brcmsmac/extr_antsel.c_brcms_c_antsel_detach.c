
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct antsel_info {int dummy; } ;


 int kfree (struct antsel_info*) ;

void brcms_c_antsel_detach(struct antsel_info *asi)
{
 kfree(asi);
}
