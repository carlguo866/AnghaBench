
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_info {scalar_t__ mode; } ;


 scalar_t__ VIDEO_FIRST_BIOS ;
 int set_bios_mode (scalar_t__) ;

__attribute__((used)) static int bios_set_mode(struct mode_info *mi)
{
 return set_bios_mode(mi->mode - VIDEO_FIRST_BIOS);
}
