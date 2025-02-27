
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;
struct bttv_fh {int type; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 struct videobuf_queue* bttv_queue (struct bttv_fh*) ;
 int bttv_resource (struct bttv_fh*) ;
 scalar_t__ check_btres (struct bttv_fh*,int) ;
 scalar_t__ videobuf_queue_is_busy (struct videobuf_queue*) ;

__attribute__((used)) static int bttv_switch_type(struct bttv_fh *fh, enum v4l2_buf_type type)
{
 struct videobuf_queue *q = bttv_queue(fh);
 int res = bttv_resource(fh);

 if (check_btres(fh,res))
  return -EBUSY;
 if (videobuf_queue_is_busy(q))
  return -EBUSY;
 fh->type = type;
 return 0;
}
