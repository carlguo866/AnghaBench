
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int priority; int seq_num; int frag_num; } ;
struct TYPE_5__ {TYPE_1__ attrib; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
union recv_frame {TYPE_3__ u; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct stainfo_rxcache {scalar_t__* tid_rxseq; } ;
typedef int sint ;


 int _FAIL ;
 int _SUCCESS ;

__attribute__((used)) static sint recv_decache(union recv_frame *precv_frame, u8 bretry,
    struct stainfo_rxcache *prxcache)
{
 sint tid = precv_frame->u.hdr.attrib.priority;
 u16 seq_ctrl = ((precv_frame->u.hdr.attrib.seq_num & 0xffff) << 4) |
   (precv_frame->u.hdr.attrib.frag_num & 0xf);

 if (tid > 15)
  return _FAIL;
 if (seq_ctrl == prxcache->tid_rxseq[tid])
  return _FAIL;
 prxcache->tid_rxseq[tid] = seq_ctrl;
 return _SUCCESS;
}
