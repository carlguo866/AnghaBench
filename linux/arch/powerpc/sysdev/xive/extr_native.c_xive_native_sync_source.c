
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int XIVE_SYNC_EAS ;
 int opal_xive_sync (int ,int ) ;

void xive_native_sync_source(u32 hw_irq)
{
 opal_xive_sync(XIVE_SYNC_EAS, hw_irq);
}
