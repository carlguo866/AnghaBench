
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_hard_light_byte (int,int) ;

__attribute__((used)) static inline int fz_overlay_byte(int b, int s)
{
 return fz_hard_light_byte(s, b);
}
