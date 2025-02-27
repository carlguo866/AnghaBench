
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ctl; scalar_t__ ccr; scalar_t__ ca; scalar_t__ la; scalar_t__ sa; scalar_t__ mpr; scalar_t__ czbfs; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct src_rsc_ctrl_blk {int mpr; int sa; int la; int ca; int ccr; int ctl; TYPE_2__ dirty; } ;
struct hw {int dummy; } ;


 scalar_t__ MIXER_PMOPHI ;
 scalar_t__ MIXER_PMOPLO ;
 scalar_t__ MIXER_PRING_LO_HI ;
 scalar_t__ SRC_CA ;
 scalar_t__ SRC_CCR ;
 scalar_t__ SRC_CF ;
 scalar_t__ SRC_CTL ;
 scalar_t__ SRC_DN0Z ;
 scalar_t__ SRC_DN1Z ;
 scalar_t__ SRC_LA ;
 scalar_t__ SRC_SA ;
 scalar_t__ SRC_UPZ ;
 int hw_write_20kx (struct hw*,scalar_t__,int) ;
 unsigned int src_param_pitch_mixer (unsigned int) ;

__attribute__((used)) static int src_commit_write(struct hw *hw, unsigned int idx, void *blk)
{
 struct src_rsc_ctrl_blk *ctl = blk;
 int i;

 if (ctl->dirty.bf.czbfs) {

  for (i = 0; i < 8; i++)
   hw_write_20kx(hw, SRC_UPZ+idx*0x100+i*0x4, 0);

  for (i = 0; i < 4; i++)
   hw_write_20kx(hw, SRC_DN0Z+idx*0x100+i*0x4, 0);

  for (i = 0; i < 8; i++)
   hw_write_20kx(hw, SRC_DN1Z+idx*0x100+i*0x4, 0);

  ctl->dirty.bf.czbfs = 0;
 }
 if (ctl->dirty.bf.mpr) {




  unsigned int pm_idx = src_param_pitch_mixer(idx);
  hw_write_20kx(hw, MIXER_PRING_LO_HI+4*pm_idx, ctl->mpr);
  hw_write_20kx(hw, MIXER_PMOPLO+8*pm_idx, 0x3);
  hw_write_20kx(hw, MIXER_PMOPHI+8*pm_idx, 0x0);
  ctl->dirty.bf.mpr = 0;
 }
 if (ctl->dirty.bf.sa) {
  hw_write_20kx(hw, SRC_SA+idx*0x100, ctl->sa);
  ctl->dirty.bf.sa = 0;
 }
 if (ctl->dirty.bf.la) {
  hw_write_20kx(hw, SRC_LA+idx*0x100, ctl->la);
  ctl->dirty.bf.la = 0;
 }
 if (ctl->dirty.bf.ca) {
  hw_write_20kx(hw, SRC_CA+idx*0x100, ctl->ca);
  ctl->dirty.bf.ca = 0;
 }


 hw_write_20kx(hw, SRC_CF+idx*0x100, 0x0);

 if (ctl->dirty.bf.ccr) {
  hw_write_20kx(hw, SRC_CCR+idx*0x100, ctl->ccr);
  ctl->dirty.bf.ccr = 0;
 }
 if (ctl->dirty.bf.ctl) {
  hw_write_20kx(hw, SRC_CTL+idx*0x100, ctl->ctl);
  ctl->dirty.bf.ctl = 0;
 }

 return 0;
}
