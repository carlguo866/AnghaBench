
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct umcs7840_softc {TYPE_1__* sc_ports; } ;
struct TYPE_4__ {int reg_sp; } ;
struct TYPE_3__ {size_t sc_lcr; } ;


 int DPRINTF (char*,size_t,int ,...) ;
 size_t MCS7840_DEV_SPx_CLOCK_MASK ;
 size_t MCS7840_UART_LCR_DIVISORS ;
 int MCS7840_UART_REG_DLL ;
 int MCS7840_UART_REG_DLM ;
 int MCS7840_UART_REG_LCR ;
 scalar_t__ umcs7840_calc_baudrate (int ,int*,size_t*) ;
 int umcs7840_get_reg_sync (struct umcs7840_softc*,int ,size_t*) ;
 TYPE_2__* umcs7840_port_registers ;
 int umcs7840_set_UART_reg_sync (struct umcs7840_softc*,size_t,int ,size_t) ;
 int umcs7840_set_reg_sync (struct umcs7840_softc*,int ,size_t) ;

__attribute__((used)) static usb_error_t
umcs7840_set_baudrate(struct umcs7840_softc *sc, uint8_t portno, uint32_t rate)
{
 usb_error_t err;
 uint16_t divisor;
 uint8_t clk;
 uint8_t data;

 if (umcs7840_calc_baudrate(rate, &divisor, &clk)) {
  DPRINTF("Port %d bad speed: %d\n", portno, rate);
  return (-1);
 }
 if (divisor == 0 || (clk & MCS7840_DEV_SPx_CLOCK_MASK) != clk) {
  DPRINTF("Port %d bad speed calculation: %d\n", portno, rate);
  return (-1);
 }
 DPRINTF("Port %d set speed: %d (%02x / %d)\n", portno, rate, clk, divisor);


 err = umcs7840_get_reg_sync(sc, umcs7840_port_registers[portno].reg_sp, &data);
 if (err)
  return (err);
 data &= MCS7840_DEV_SPx_CLOCK_MASK;
 data |= clk;
 err = umcs7840_set_reg_sync(sc, umcs7840_port_registers[portno].reg_sp, data);
 if (err)
  return (err);


 sc->sc_ports[portno].sc_lcr |= MCS7840_UART_LCR_DIVISORS;
 err = umcs7840_set_UART_reg_sync(sc, portno, MCS7840_UART_REG_LCR, sc->sc_ports[portno].sc_lcr);
 if (err)
  return (err);

 err = umcs7840_set_UART_reg_sync(sc, portno, MCS7840_UART_REG_DLL, (uint8_t)(divisor & 0xff));
 if (err)
  return (err);
 err = umcs7840_set_UART_reg_sync(sc, portno, MCS7840_UART_REG_DLM, (uint8_t)((divisor >> 8) & 0xff));
 if (err)
  return (err);


 sc->sc_ports[portno].sc_lcr &= ~MCS7840_UART_LCR_DIVISORS;
 err = umcs7840_set_UART_reg_sync(sc, portno, MCS7840_UART_REG_LCR, sc->sc_ports[portno].sc_lcr);
 if (err)
  return (err);
 return (0);
}
