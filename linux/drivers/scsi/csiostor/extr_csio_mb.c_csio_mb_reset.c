
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fw_reset_cmd {void* halt_pkd; void* val; void* retval_len16; void* op_to_write; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;


 int CSIO_INIT_MBP (struct csio_mb*,struct fw_reset_cmd*,int ,struct csio_hw*,void (*) (struct csio_hw*,struct csio_mb*),int) ;
 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_RESET_CMD ;
 void* htonl (int) ;

void
csio_mb_reset(struct csio_hw *hw, struct csio_mb *mbp, uint32_t tmo,
       int reset, int halt,
       void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 struct fw_reset_cmd *cmdp = (struct fw_reset_cmd *)(mbp->mb);

 CSIO_INIT_MBP(mbp, cmdp, tmo, hw, cbfn, 1);

 cmdp->op_to_write = htonl(FW_CMD_OP_V(FW_RESET_CMD) |
      FW_CMD_REQUEST_F | FW_CMD_WRITE_F);
 cmdp->retval_len16 = htonl(FW_CMD_LEN16_V(sizeof(*cmdp) / 16));
 cmdp->val = htonl(reset);
 cmdp->halt_pkd = htonl(halt);

}
