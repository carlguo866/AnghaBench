
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int *** sw; int z_sz; int y_sz; int x_sz; } ;


 int canonicalize (int,int ) ;
 scalar_t__ install_tswitch (struct torus*,int,int,int,int ) ;
 int log_no_perp (struct torus*,int,int,int,int,int,int,int) ;
 scalar_t__ safe_x_perpendicular (struct torus*,int,int,int) ;
 int tfind_3d_perpendicular (int ,int ,int ,int ) ;

__attribute__((used)) static
bool handle_case_0x775(struct torus *t, int i, int j, int k)
{
 int ip1 = canonicalize(i + 1, t->x_sz);
 int ip2 = canonicalize(i + 2, t->x_sz);
 int jp1 = canonicalize(j + 1, t->y_sz);
 int kp1 = canonicalize(k + 1, t->z_sz);

 if (safe_x_perpendicular(t, ip1, jp1, k) &&
     install_tswitch(t, i, jp1, k,
       tfind_3d_perpendicular(t->sw[ip1][j][k],
         t->sw[ip1][jp1][k],
         t->sw[ip1][jp1][kp1],
         t->sw[ip2][jp1][k]))) {
  return 1;
 }
 log_no_perp(t, 0x775, i, j, k, ip1, jp1, k);
 return 0;
}
