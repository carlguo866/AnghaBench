
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_lun {int bppa; } ;
struct pblk_line_meta {int blk_per_line; } ;
struct pblk_line {int erase_bitmap; TYPE_1__* chks; int blk_in_line; } ;
struct pblk {struct pblk_lun* luns; struct nvm_tgt_dev* dev; struct pblk_line_meta lm; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct TYPE_2__ {int state; } ;


 int NVM_CHK_ST_FREE ;
 int atomic_read (int *) ;
 int pblk_ppa_to_pos (struct nvm_geo*,int ) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int pblk_prepare_new_line(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_meta *lm = &pblk->lm;
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 int blk_to_erase = atomic_read(&line->blk_in_line);
 int i;

 for (i = 0; i < lm->blk_per_line; i++) {
  struct pblk_lun *rlun = &pblk->luns[i];
  int pos = pblk_ppa_to_pos(geo, rlun->bppa);
  int state = line->chks[pos].state;


  if (state & NVM_CHK_ST_FREE) {
   set_bit(pblk_ppa_to_pos(geo, rlun->bppa),
       line->erase_bitmap);
   blk_to_erase--;
  }
 }

 return blk_to_erase;
}
