
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* command; } ;
struct TYPE_5__ {void* command; } ;
struct mvpp2_tx_desc {TYPE_3__ pp22; TYPE_2__ pp21; } ;
struct mvpp2_port {TYPE_1__* priv; } ;
struct TYPE_4__ {scalar_t__ hw_version; } ;


 scalar_t__ MVPP21 ;
 void* cpu_to_le32 (unsigned int) ;

__attribute__((used)) static void mvpp2_txdesc_cmd_set(struct mvpp2_port *port,
     struct mvpp2_tx_desc *tx_desc,
     unsigned int command)
{
 if (port->priv->hw_version == MVPP21)
  tx_desc->pp21.command = cpu_to_le32(command);
 else
  tx_desc->pp22.command = cpu_to_le32(command);
}
