
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct imstt_regvals {int pclk_m; int pclk_n; int pclk_p; } ;
struct imstt_par {int* cmap_regs; struct imstt_regvals init; } ;
typedef int __u8 ;


 size_t PIDXDATA ;
 size_t PIDXHI ;
 size_t PIDXLO ;
 int PIXC0 ;
 int PIXFMT ;
 int PIXM0 ;
 int PIXN0 ;
 int PIXP0 ;
 int eieio () ;

__attribute__((used)) static void
set_imstt_regvals_ibm (struct imstt_par *par, u_int bpp)
{
 struct imstt_regvals *init = &par->init;
 __u8 pformat = (bpp >> 3) + 2;

 par->cmap_regs[PIDXHI] = 0; eieio();
 par->cmap_regs[PIDXLO] = PIXM0; eieio();
 par->cmap_regs[PIDXDATA] = init->pclk_m;eieio();
 par->cmap_regs[PIDXLO] = PIXN0; eieio();
 par->cmap_regs[PIDXDATA] = init->pclk_n;eieio();
 par->cmap_regs[PIDXLO] = PIXP0; eieio();
 par->cmap_regs[PIDXDATA] = init->pclk_p;eieio();
 par->cmap_regs[PIDXLO] = PIXC0; eieio();
 par->cmap_regs[PIDXDATA] = 0x02; eieio();

 par->cmap_regs[PIDXLO] = PIXFMT; eieio();
 par->cmap_regs[PIDXDATA] = pformat; eieio();
}
