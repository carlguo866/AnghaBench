
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct linear_segments {scalar_t__ x; scalar_t__ y; } ;
typedef int s32 ;


 int do_div (int,scalar_t__) ;

__attribute__((used)) static u32 interpolate_value(u32 value, struct linear_segments *segments,
        unsigned len)
{
 u64 tmp64;
 u32 dx;
 s32 dy;
 int i, ret;

 if (value >= segments[0].x)
  return segments[0].y;
 if (value < segments[len-1].x)
  return segments[len-1].y;

 for (i = 1; i < len - 1; i++) {

  if (value == segments[i].x)
   return segments[i].y;
  if (value > segments[i].x)
   break;
 }


 dy = segments[i - 1].y - segments[i].y;
 dx = segments[i - 1].x - segments[i].x;

 tmp64 = value - segments[i].x;
 tmp64 *= dy;
 do_div(tmp64, dx);
 ret = segments[i].y + tmp64;

 return ret;
}
