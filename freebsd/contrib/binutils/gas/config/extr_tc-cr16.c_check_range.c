
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int op_err ;


 unsigned int OP_ABS20 ;
 unsigned int OP_DEC ;
 unsigned int OP_ESC ;
 unsigned int OP_ESC1 ;
 unsigned int OP_EVEN ;
 int OP_LEGAL ;
 unsigned int OP_NEG ;
 int OP_NOT_EVEN ;
 int OP_OUT_OF_RANGE ;
 unsigned int OP_SHIFT ;
 unsigned int OP_SHIFT_DEC ;
 unsigned int OP_SIGNED ;
 unsigned int OP_UNSIGNED ;

__attribute__((used)) static op_err
check_range (long *num, int bits, int unsigned flags, int update)
{
  long min, max;
  int retval = OP_LEGAL;
  long value = *num;

  if (bits == 0 && value > 0) return OP_OUT_OF_RANGE;




  if (value & 0x80000000)
    value |= (-1L << 31);



  if (flags & OP_EVEN)
    {
      if (value % 2)
        return OP_NOT_EVEN;
    }

  if (flags & OP_DEC)
    {
      value -= 1;
      if (update)
        *num = value;
    }

  if (flags & OP_SHIFT)
    {
      value >>= 1;
      if (update)
        *num = value;
    }
  else if (flags & OP_SHIFT_DEC)
    {
      value = (value >> 1) - 1;
      if (update)
        *num = value;
    }

  if (flags & OP_ABS20)
    {
      if (value > 0xEFFFF)
        return OP_OUT_OF_RANGE;
    }

  if (flags & OP_ESC)
    {
      if (value == 0xB || value == 0x9)
        return OP_OUT_OF_RANGE;
      else if (value == -1)
 {
   if (update)
     *num = 9;
   return retval;
 }
    }

  if (flags & OP_ESC1)
    {
      if (value > 13)
        return OP_OUT_OF_RANGE;
    }

   if (flags & OP_SIGNED)
     {
       max = (1 << (bits - 1)) - 1;
       min = - (1 << (bits - 1));
       if ((value > max) || (value < min))
         retval = OP_OUT_OF_RANGE;
     }
   else if (flags & OP_UNSIGNED)
     {
       max = ((((1 << (bits - 1)) - 1) << 1) | 1);
       min = 0;
       if (((unsigned long) value > (unsigned long) max)
            || ((unsigned long) value < (unsigned long) min))
         retval = OP_OUT_OF_RANGE;
     }
   else if (flags & OP_NEG)
     {
       max = - 1;
       min = - ((1 << (bits - 1))-1);
       if ((value > max) || (value < min))
         retval = OP_OUT_OF_RANGE;
     }
   return retval;
}
