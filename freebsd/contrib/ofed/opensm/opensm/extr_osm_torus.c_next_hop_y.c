
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {scalar_t__*** sw; } ;
struct t_switch {size_t i; size_t j; size_t k; } ;


 int next_hop_idx (struct torus*,int,struct t_switch*,struct t_switch*,unsigned int*) ;
 int next_hop_path (struct torus*,int,struct t_switch*,struct t_switch*,unsigned int*) ;

__attribute__((used)) static
bool next_hop_y(struct torus *t,
  struct t_switch *ssw, struct t_switch *dsw, unsigned *pt_grp)
{
 if (t->sw[ssw->i][dsw->j][ssw->k])




  return next_hop_path(t, 1, ssw, dsw, pt_grp);
 else





  return next_hop_idx(t, 1, ssw, dsw, pt_grp);
}
