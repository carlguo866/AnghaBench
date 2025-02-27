
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch_tdep {scalar_t__ mips_fpu_type; } ;
struct gdbarch {int dummy; } ;
typedef enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;
struct TYPE_2__ {int fp0; } ;


 int BFD_ENDIAN_UNKNOWN ;
 int FIELD_BITPOS (int ) ;
 scalar_t__ MIPS_FPU_NONE ;
 scalar_t__ NUM_REGS ;
 int RETURN_VALUE_REGISTER_CONVENTION ;
 int RETURN_VALUE_STRUCT_CONVENTION ;
 int TARGET_BYTE_ORDER ;
 int TARGET_CHAR_BIT ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_CODE_FLT ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_CODE_UNION ;
 int * TYPE_FIELDS (struct type*) ;
 struct type* TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_LENGTH (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 int V0_REGNUM ;
 int current_gdbarch ;
 int fprintf_unfiltered (int ,char*,...) ;
 int gdb_stderr ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 scalar_t__ mips_debug ;
 TYPE_1__* mips_regnum (int ) ;
 int mips_saved_regsize (struct gdbarch_tdep*) ;
 int mips_xfer_register (struct regcache*,scalar_t__,int,int ,void*,void const*,int) ;
 int register_size (int ,int) ;

__attribute__((used)) static enum return_value_convention
mips_n32n64_return_value (struct gdbarch *gdbarch,
     struct type *type, struct regcache *regcache,
     void *readbuf, const void *writebuf)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  if (TYPE_CODE (type) == TYPE_CODE_STRUCT
      || TYPE_CODE (type) == TYPE_CODE_UNION
      || TYPE_CODE (type) == TYPE_CODE_ARRAY
      || TYPE_LENGTH (type) > 2 * mips_saved_regsize (tdep))
    return RETURN_VALUE_STRUCT_CONVENTION;
  else if (TYPE_CODE (type) == TYPE_CODE_FLT
    && tdep->mips_fpu_type != MIPS_FPU_NONE)
    {


      if (mips_debug)
 fprintf_unfiltered (gdb_stderr, "Return float in $fp0\n");
      mips_xfer_register (regcache,
     NUM_REGS + mips_regnum (current_gdbarch)->fp0,
     TYPE_LENGTH (type),
     TARGET_BYTE_ORDER, readbuf, writebuf, 0);
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  else if (TYPE_CODE (type) == TYPE_CODE_STRUCT
    && TYPE_NFIELDS (type) <= 2
    && TYPE_NFIELDS (type) >= 1
    && ((TYPE_NFIELDS (type) == 1
  && (TYPE_CODE (TYPE_FIELD_TYPE (type, 0))
      == TYPE_CODE_FLT))
        || (TYPE_NFIELDS (type) == 2
     && (TYPE_CODE (TYPE_FIELD_TYPE (type, 0))
         == TYPE_CODE_FLT)
     && (TYPE_CODE (TYPE_FIELD_TYPE (type, 1))
         == TYPE_CODE_FLT)))
    && tdep->mips_fpu_type != MIPS_FPU_NONE)
    {



      int regnum;
      int field;
      for (field = 0, regnum = mips_regnum (current_gdbarch)->fp0;
    field < TYPE_NFIELDS (type); field++, regnum += 2)
 {
   int offset = (FIELD_BITPOS (TYPE_FIELDS (type)[field])
   / TARGET_CHAR_BIT);
   if (mips_debug)
     fprintf_unfiltered (gdb_stderr, "Return float struct+%d\n",
    offset);
   mips_xfer_register (regcache, NUM_REGS + regnum,
         TYPE_LENGTH (TYPE_FIELD_TYPE (type, field)),
         TARGET_BYTE_ORDER, readbuf, writebuf, offset);
 }
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  else if (TYPE_CODE (type) == TYPE_CODE_STRUCT
    || TYPE_CODE (type) == TYPE_CODE_UNION)
    {



      int offset;
      int regnum;
      for (offset = 0, regnum = V0_REGNUM;
    offset < TYPE_LENGTH (type);
    offset += register_size (current_gdbarch, regnum), regnum++)
 {
   int xfer = register_size (current_gdbarch, regnum);
   if (offset + xfer > TYPE_LENGTH (type))
     xfer = TYPE_LENGTH (type) - offset;
   if (mips_debug)
     fprintf_unfiltered (gdb_stderr, "Return struct+%d:%d in $%d\n",
    offset, xfer, regnum);
   mips_xfer_register (regcache, NUM_REGS + regnum, xfer,
         BFD_ENDIAN_UNKNOWN, readbuf, writebuf, offset);
 }
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  else
    {


      int offset;
      int regnum;
      for (offset = 0, regnum = V0_REGNUM;
    offset < TYPE_LENGTH (type);
    offset += register_size (current_gdbarch, regnum), regnum++)
 {
   int xfer = register_size (current_gdbarch, regnum);
   if (offset + xfer > TYPE_LENGTH (type))
     xfer = TYPE_LENGTH (type) - offset;
   if (mips_debug)
     fprintf_unfiltered (gdb_stderr, "Return scalar+%d:%d in $%d\n",
    offset, xfer, regnum);
   mips_xfer_register (regcache, NUM_REGS + regnum, xfer,
         TARGET_BYTE_ORDER, readbuf, writebuf, offset);
 }
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
}
