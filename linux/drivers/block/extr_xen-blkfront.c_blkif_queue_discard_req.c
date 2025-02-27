
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_4__ {unsigned long id; scalar_t__ flag; scalar_t__ sector_number; int nr_sectors; } ;
struct TYPE_5__ {TYPE_1__ discard; } ;
struct blkif_request {TYPE_2__ u; int operation; } ;
struct blkfront_ring_info {TYPE_3__* shadow; struct blkfront_info* dev_info; } ;
struct blkfront_info {scalar_t__ feature_secdiscard; } ;
typedef scalar_t__ blkif_sector_t ;
struct TYPE_6__ {struct blkif_request req; } ;


 scalar_t__ BLKIF_DISCARD_SECURE ;
 int BLKIF_OP_DISCARD ;
 scalar_t__ REQ_OP_SECURE_ERASE ;
 scalar_t__ blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 unsigned long blkif_ring_get_request (struct blkfront_ring_info*,struct request*,struct blkif_request**) ;
 scalar_t__ req_op (struct request*) ;

__attribute__((used)) static int blkif_queue_discard_req(struct request *req, struct blkfront_ring_info *rinfo)
{
 struct blkfront_info *info = rinfo->dev_info;
 struct blkif_request *ring_req;
 unsigned long id;


 id = blkif_ring_get_request(rinfo, req, &ring_req);

 ring_req->operation = BLKIF_OP_DISCARD;
 ring_req->u.discard.nr_sectors = blk_rq_sectors(req);
 ring_req->u.discard.id = id;
 ring_req->u.discard.sector_number = (blkif_sector_t)blk_rq_pos(req);
 if (req_op(req) == REQ_OP_SECURE_ERASE && info->feature_secdiscard)
  ring_req->u.discard.flag = BLKIF_DISCARD_SECURE;
 else
  ring_req->u.discard.flag = 0;


 rinfo->shadow[id].req = *ring_req;

 return 0;
}
