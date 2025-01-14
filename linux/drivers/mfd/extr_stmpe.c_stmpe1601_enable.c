
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe {int * regs; } ;


 unsigned int STMPE1601_SYS_CTRL_ENABLE_GPIO ;
 unsigned int STMPE1601_SYS_CTRL_ENABLE_KPC ;
 unsigned int STMPE1601_SYS_CTRL_ENABLE_SPWM ;
 unsigned int STMPE_BLOCK_GPIO ;
 unsigned int STMPE_BLOCK_KEYPAD ;
 unsigned int STMPE_BLOCK_PWM ;
 size_t STMPE_IDX_SYS_CTRL ;
 int __stmpe_set_bits (struct stmpe*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int stmpe1601_enable(struct stmpe *stmpe, unsigned int blocks,
       bool enable)
{
 unsigned int mask = 0;

 if (blocks & STMPE_BLOCK_GPIO)
  mask |= STMPE1601_SYS_CTRL_ENABLE_GPIO;
 else
  mask &= ~STMPE1601_SYS_CTRL_ENABLE_GPIO;

 if (blocks & STMPE_BLOCK_KEYPAD)
  mask |= STMPE1601_SYS_CTRL_ENABLE_KPC;
 else
  mask &= ~STMPE1601_SYS_CTRL_ENABLE_KPC;

 if (blocks & STMPE_BLOCK_PWM)
  mask |= STMPE1601_SYS_CTRL_ENABLE_SPWM;
 else
  mask &= ~STMPE1601_SYS_CTRL_ENABLE_SPWM;

 return __stmpe_set_bits(stmpe, stmpe->regs[STMPE_IDX_SYS_CTRL], mask,
    enable ? mask : 0);
}
