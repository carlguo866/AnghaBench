
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_state {int dummy; } ;


 int mipi_csis_enable_interrupts (struct csi_state*,int) ;
 int mipi_csis_system_enable (struct csi_state*,int) ;

__attribute__((used)) static void mipi_csis_stop_stream(struct csi_state *state)
{
 mipi_csis_enable_interrupts(state, 0);
 mipi_csis_system_enable(state, 0);
}
