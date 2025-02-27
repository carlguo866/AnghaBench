
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mvpp2_port {int priv; int id; } ;
struct mvpp2_cls_c2_entry {int* attr; } ;


 int MVPP22_CLS_C2_ATTR0_QHIGH (int) ;
 int MVPP22_CLS_C2_ATTR0_QHIGH_MASK ;
 int MVPP22_CLS_C2_ATTR0_QLOW (int) ;
 int MVPP22_CLS_C2_ATTR0_QLOW_MASK ;
 int MVPP22_CLS_C2_ATTR2_RSS_EN ;
 int MVPP22_CLS_C2_RSS_ENTRY (int ) ;
 int mvpp2_cls_c2_read (int ,int ,struct mvpp2_cls_c2_entry*) ;
 int mvpp2_cls_c2_write (int ,struct mvpp2_cls_c2_entry*) ;

__attribute__((used)) static void mvpp2_rss_port_c2_enable(struct mvpp2_port *port, u32 ctx)
{
 struct mvpp2_cls_c2_entry c2;
 u8 qh, ql;

 mvpp2_cls_c2_read(port->priv, MVPP22_CLS_C2_RSS_ENTRY(port->id), &c2);




 qh = (ctx >> 3) & MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
 ql = ctx & MVPP22_CLS_C2_ATTR0_QLOW_MASK;

 c2.attr[0] = MVPP22_CLS_C2_ATTR0_QHIGH(qh) |
       MVPP22_CLS_C2_ATTR0_QLOW(ql);

 c2.attr[2] |= MVPP22_CLS_C2_ATTR2_RSS_EN;

 mvpp2_cls_c2_write(port->priv, &c2);
}
