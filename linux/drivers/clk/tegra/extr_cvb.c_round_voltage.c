
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rail_alignment {int step_uv; int offset_uv; } ;


 int max (int,int) ;

__attribute__((used)) static int round_voltage(int mv, const struct rail_alignment *align, int up)
{
 if (align->step_uv) {
  int uv;

  uv = max(mv * 1000, align->offset_uv) - align->offset_uv;
  uv = (uv + (up ? align->step_uv - 1 : 0)) / align->step_uv;
  return (uv * align->step_uv + align->offset_uv) / 1000;
 }
 return mv;
}
