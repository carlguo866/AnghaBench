
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {int dummy; } ;


 int nv04_graph_mthd_bind_class (struct nouveau_object*,void*,int ) ;
 int nv04_graph_set_ctx1 (struct nouveau_object*,int,int) ;

__attribute__((used)) static int
nv01_graph_mthd_bind_clip(struct nouveau_object *object, u32 mthd,
     void *args, u32 size)
{
 switch (nv04_graph_mthd_bind_class(object, args, size)) {
 case 0x30:
  nv04_graph_set_ctx1(object, 0x2000, 0);
  return 0;
 case 0x19:
  nv04_graph_set_ctx1(object, 0x2000, 0x2000);
  return 0;
 }
 return 1;
}
