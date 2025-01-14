
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ CMDYD; scalar_t__ CMDXD; scalar_t__ CMDYC; scalar_t__ CMDXC; scalar_t__ CMDYB; scalar_t__ CMDXB; scalar_t__ CMDYA; scalar_t__ CMDXA; } ;
typedef TYPE_1__ vdp1cmd_struct ;
typedef int u8 ;
typedef scalar_t__ s32 ;
struct TYPE_8__ {scalar_t__ localY; scalar_t__ localX; int addr; } ;
typedef TYPE_2__ Vdp1 ;


 int Vdp1ReadCommand (TYPE_1__*,int ,int *) ;
 int drawQuad (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,TYPE_2__*,TYPE_1__*,int *) ;

void VIDSoftVdp1DistortedSpriteDraw(u8* ram, Vdp1*regs, u8 * back_framebuffer) {

 s32 xa,ya,xb,yb,xc,yc,xd,yd;
   vdp1cmd_struct cmd;

   Vdp1ReadCommand(&cmd, regs->addr, ram);

    xa = (s32)(cmd.CMDXA + regs->localX);
    ya = (s32)(cmd.CMDYA + regs->localY);

    xb = (s32)(cmd.CMDXB + regs->localX);
    yb = (s32)(cmd.CMDYB + regs->localY);

    xc = (s32)(cmd.CMDXC + regs->localX);
    yc = (s32)(cmd.CMDYC + regs->localY);

    xd = (s32)(cmd.CMDXD + regs->localX);
    yd = (s32)(cmd.CMDYD + regs->localY);

    drawQuad(xa, ya, xd, yd, xb, yb, xc, yc, ram, regs, &cmd, back_framebuffer);
}
