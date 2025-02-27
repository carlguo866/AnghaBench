
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_device {int dummy; } ;
struct enclosure_component {int locate; } ;


 unsigned char* ses_get_page2_descriptor (struct enclosure_device*,struct enclosure_component*) ;

__attribute__((used)) static void ses_get_locate(struct enclosure_device *edev,
      struct enclosure_component *ecomp)
{
 unsigned char *desc;

 desc = ses_get_page2_descriptor(edev, ecomp);
 if (desc)
  ecomp->locate = (desc[2] & 0x02) ? 1 : 0;
}
