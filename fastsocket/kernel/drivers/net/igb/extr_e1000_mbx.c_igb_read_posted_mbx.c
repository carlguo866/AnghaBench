
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* read ) (struct e1000_hw*,int *,int ,int ) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_MBX ;
 scalar_t__ igb_poll_for_msg (struct e1000_hw*,int ) ;
 scalar_t__ stub1 (struct e1000_hw*,int *,int ,int ) ;

__attribute__((used)) static s32 igb_read_posted_mbx(struct e1000_hw *hw, u32 *msg, u16 size,
          u16 mbx_id)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 s32 ret_val = -E1000_ERR_MBX;

 if (!mbx->ops.read)
  goto out;

 ret_val = igb_poll_for_msg(hw, mbx_id);

 if (!ret_val)
  ret_val = mbx->ops.read(hw, msg, size, mbx_id);
out:
 return ret_val;
}
