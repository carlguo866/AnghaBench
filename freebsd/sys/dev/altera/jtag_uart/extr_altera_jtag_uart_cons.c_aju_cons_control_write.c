
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ALTERA_JTAG_UART_CONTROL_OFF ;
 scalar_t__ BERI_UART_BASE ;
 int mips_iowrite_uint32le (int ,int ) ;
 int mips_phys_to_uncached (scalar_t__) ;

__attribute__((used)) static inline void
aju_cons_control_write(uint32_t v)
{

 mips_iowrite_uint32le(mips_phys_to_uncached(BERI_UART_BASE +
     ALTERA_JTAG_UART_CONTROL_OFF), v);
}
