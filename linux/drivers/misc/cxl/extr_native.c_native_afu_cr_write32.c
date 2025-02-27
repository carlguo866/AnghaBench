
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct cxl_afu {int crs_len; int crs_offset; TYPE_1__* native; int adapter; } ;
struct TYPE_4__ {int (* link_ok ) (int ,struct cxl_afu*) ;} ;
struct TYPE_3__ {int afu_desc_mmio; } ;


 int EIO ;
 int ERANGE ;
 TYPE_2__* cxl_ops ;
 int out_le32 (int,int ) ;
 int stub1 (int ,struct cxl_afu*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int native_afu_cr_write32(struct cxl_afu *afu, int cr, u64 off, u32 in)
{
 if (unlikely(!cxl_ops->link_ok(afu->adapter, afu)))
  return -EIO;
 if (unlikely(off >= afu->crs_len))
  return -ERANGE;
 out_le32(afu->native->afu_desc_mmio + afu->crs_offset +
  (cr * afu->crs_len) + off, in);
 return 0;
}
