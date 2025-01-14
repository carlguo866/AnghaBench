
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vpif_device {struct channel_obj** dev; } ;
struct TYPE_7__ {int field; } ;
struct TYPE_8__ {TYPE_1__ pix; } ;
struct TYPE_9__ {TYPE_2__ fmt; } ;
struct common_obj {scalar_t__ started; TYPE_6__* next_frm; TYPE_6__* cur_frm; int dma_queue; TYPE_3__ fmt; } ;
struct TYPE_10__ {int frm_fmt; } ;
struct TYPE_11__ {TYPE_4__ std_info; } ;
struct channel_obj {int field_id; scalar_t__ channel_id; TYPE_5__ vpifparams; struct common_obj* common; } ;
typedef int irqreturn_t ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_12__ {int done; int state; int ts; } ;


 int IRQ_HANDLED ;
 int VIDEOBUF_DONE ;
 int VPIF_NUMOBJECTS ;
 size_t VPIF_VIDEO_INDEX ;
 scalar_t__** channel_first_int ;
 int do_gettimeofday (int *) ;
 scalar_t__ list_empty (int *) ;
 int process_interlaced_mode (int,struct common_obj*) ;
 int process_progressive_mode (struct common_obj*) ;
 int vpif_channel_getfid (scalar_t__) ;
 struct vpif_device vpif_obj ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t vpif_channel_isr(int irq, void *dev_id)
{
 struct vpif_device *dev = &vpif_obj;
 struct channel_obj *ch;
 struct common_obj *common;
 enum v4l2_field field;
 int fid = -1, i;
 int channel_id = 0;

 channel_id = *(int *)(dev_id);
 ch = dev->dev[channel_id];
 field = ch->common[VPIF_VIDEO_INDEX].fmt.fmt.pix.field;
 for (i = 0; i < VPIF_NUMOBJECTS; i++) {
  common = &ch->common[i];

  if (0 == common->started)
   continue;

  if (1 == ch->vpifparams.std_info.frm_fmt) {
   if (list_empty(&common->dma_queue))
    continue;


   if (!channel_first_int[i][channel_id]) {


    do_gettimeofday(&common->cur_frm->ts);
    common->cur_frm->state = VIDEOBUF_DONE;
    wake_up_interruptible(&common->cur_frm->done);

    common->cur_frm = common->next_frm;
   }

   channel_first_int[i][channel_id] = 0;
   process_progressive_mode(common);
  } else {



   if (channel_first_int[i][channel_id]) {
    channel_first_int[i][channel_id] = 0;
    continue;
   }

   if (0 == i) {
    ch->field_id ^= 1;

    fid = vpif_channel_getfid(ch->channel_id + 2);

    if (fid != ch->field_id) {

     if (0 == fid)
      ch->field_id = fid;

     return IRQ_HANDLED;
    }
   }
   process_interlaced_mode(fid, common);
  }
 }

 return IRQ_HANDLED;
}
