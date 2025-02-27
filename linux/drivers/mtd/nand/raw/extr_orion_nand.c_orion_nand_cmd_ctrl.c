
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct orion_nand_data {int cle; int ale; } ;
struct TYPE_2__ {scalar_t__ IO_ADDR_W; } ;
struct nand_chip {int options; TYPE_1__ legacy; } ;


 unsigned int NAND_ALE ;
 int NAND_BUSWIDTH_16 ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 struct orion_nand_data* nand_get_controller_data (struct nand_chip*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void orion_nand_cmd_ctrl(struct nand_chip *nc, int cmd,
    unsigned int ctrl)
{
 struct orion_nand_data *board = nand_get_controller_data(nc);
 u32 offs;

 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  offs = (1 << board->cle);
 else if (ctrl & NAND_ALE)
  offs = (1 << board->ale);
 else
  return;

 if (nc->options & NAND_BUSWIDTH_16)
  offs <<= 1;

 writeb(cmd, nc->legacy.IO_ADDR_W + offs);
}
