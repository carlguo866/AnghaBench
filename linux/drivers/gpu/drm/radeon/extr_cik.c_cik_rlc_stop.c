
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RLC_CNTL ;
 int WREG32 (int ,int ) ;
 int cik_enable_gui_idle_interrupt (struct radeon_device*,int) ;
 int cik_wait_for_rlc_serdes (struct radeon_device*) ;

__attribute__((used)) static void cik_rlc_stop(struct radeon_device *rdev)
{
 WREG32(RLC_CNTL, 0);

 cik_enable_gui_idle_interrupt(rdev, 0);

 cik_wait_for_rlc_serdes(rdev);
}
