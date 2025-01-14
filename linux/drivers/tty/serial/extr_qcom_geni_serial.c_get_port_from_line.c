
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_geni_serial_port {int dummy; } ;


 int ENXIO ;
 struct qcom_geni_serial_port* ERR_PTR (int ) ;
 int GENI_UART_CONS_PORTS ;
 int GENI_UART_PORTS ;
 struct qcom_geni_serial_port qcom_geni_console_port ;
 struct qcom_geni_serial_port* qcom_geni_uart_ports ;

__attribute__((used)) static struct qcom_geni_serial_port *get_port_from_line(int line, bool console)
{
 struct qcom_geni_serial_port *port;
 int nr_ports = console ? GENI_UART_CONS_PORTS : GENI_UART_PORTS;

 if (line < 0 || line >= nr_ports)
  return ERR_PTR(-ENXIO);

 port = console ? &qcom_geni_console_port : &qcom_geni_uart_ports[line];
 return port;
}
