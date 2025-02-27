
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct nand_subop {int dummy; } ;
struct TYPE_4__ {int * out; int * in; } ;
struct TYPE_5__ {scalar_t__ force_8bit; TYPE_1__ buf; } ;
struct TYPE_6__ {TYPE_2__ data; } ;
struct nand_op_instr {scalar_t__ type; TYPE_3__ ctx; } ;
struct nand_chip {int controller; } ;
struct marvell_nfc_op {unsigned int data_instr_idx; struct nand_op_instr* data_instr; } ;
struct marvell_nfc {int dummy; } ;


 scalar_t__ NAND_OP_DATA_IN_INSTR ;
 int marvell_nfc_force_byte_access (struct nand_chip*,int) ;
 int marvell_nfc_xfer_data_in_pio (struct marvell_nfc*,int *,unsigned int) ;
 int marvell_nfc_xfer_data_out_pio (struct marvell_nfc*,int const*,unsigned int) ;
 unsigned int nand_subop_get_data_len (struct nand_subop const*,unsigned int) ;
 unsigned int nand_subop_get_data_start_off (struct nand_subop const*,unsigned int) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;

__attribute__((used)) static int marvell_nfc_xfer_data_pio(struct nand_chip *chip,
         const struct nand_subop *subop,
         struct marvell_nfc_op *nfc_op)
{
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 const struct nand_op_instr *instr = nfc_op->data_instr;
 unsigned int op_id = nfc_op->data_instr_idx;
 unsigned int len = nand_subop_get_data_len(subop, op_id);
 unsigned int offset = nand_subop_get_data_start_off(subop, op_id);
 bool reading = (instr->type == NAND_OP_DATA_IN_INSTR);
 int ret;

 if (instr->ctx.data.force_8bit)
  marvell_nfc_force_byte_access(chip, 1);

 if (reading) {
  u8 *in = instr->ctx.data.buf.in + offset;

  ret = marvell_nfc_xfer_data_in_pio(nfc, in, len);
 } else {
  const u8 *out = instr->ctx.data.buf.out + offset;

  ret = marvell_nfc_xfer_data_out_pio(nfc, out, len);
 }

 if (instr->ctx.data.force_8bit)
  marvell_nfc_force_byte_access(chip, 0);

 return ret;
}
