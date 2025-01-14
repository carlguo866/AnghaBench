
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int member_0; int member_1; int member_2; } ;
struct TYPE_7__ {int member_0; int member_1; int member_2; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; } ;
struct TYPE_5__ {int member_0; int member_1; int member_2; } ;


 int assert (int) ;

int stb_box_face_vertex_axis_side(int face_number, int vertex_number, int axis)
{
   static int box_vertices[6][4][3] =
   {
      { { 1,1,1 }, { 1,0,1 }, { 1,0,0 }, { 1,1,0 } },
      { { 0,0,0 }, { 0,0,1 }, { 0,1,1 }, { 0,1,0 } },
      { { 0,0,0 }, { 0,1,0 }, { 1,1,0 }, { 1,0,0 } },
      { { 0,0,0 }, { 1,0,0 }, { 1,0,1 }, { 0,0,1 } },
      { { 1,1,1 }, { 0,1,1 }, { 0,0,1 }, { 1,0,1 } },
      { { 1,1,1 }, { 1,1,0 }, { 0,1,0 }, { 0,1,1 } },
   };
   assert(face_number >= 0 && face_number < 6);
   assert(vertex_number >= 0 && vertex_number < 4);
   assert(axis >= 0 && axis < 3);
   return box_vertices[face_number][vertex_number][axis];
}
