
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;


 int INIT_DEBUGOUT (char*) ;
 int ixgbe_setup_low_power_mode (int ) ;

__attribute__((used)) static int
ixgbe_if_shutdown(if_ctx_t ctx)
{
 int error = 0;

 INIT_DEBUGOUT("ixgbe_shutdown: begin");

 error = ixgbe_setup_low_power_mode(ctx);

 return (error);
}
