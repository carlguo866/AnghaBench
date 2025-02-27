
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netvsc_device {scalar_t__ recv_completion_cnt; } ;
struct multi_recv_comp {scalar_t__ next; scalar_t__ first; } ;



__attribute__((used)) static void recv_comp_slot_avail(const struct netvsc_device *nvdev,
     const struct multi_recv_comp *mrc,
     u32 *filled, u32 *avail)
{
 u32 count = nvdev->recv_completion_cnt;

 if (mrc->next >= mrc->first)
  *filled = mrc->next - mrc->first;
 else
  *filled = (count - mrc->first) + mrc->next;

 *avail = count - *filled - 1;
}
