
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;
typedef int __be64 ;


 int cpu_to_be64 (int ) ;
 int t4_read_reg64 (struct adapter*,int) ;

__attribute__((used)) static void get_mbox_rpl(struct adapter *adapter, __be64 *rpl, int size,
    u32 mbox_data)
{
 for ( ; size; size -= 8, mbox_data += 8)
  *rpl++ = cpu_to_be64(t4_read_reg64(adapter, mbox_data));
}
