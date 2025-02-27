; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_critical_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_critical_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSP2_CMU_ERR = common dso_local global i32 0, align 4
@cmu_err_handler = common dso_local global i32 0, align 4
@FSP2_BUS_ERR = common dso_local global i32 0, align 4
@bus_err_handler = common dso_local global i32 0, align 4
@FSP2_CONF_ERR = common dso_local global i32 0, align 4
@conf_err_handler = common dso_local global i32 0, align 4
@FSP2_OPBD_ERR = common dso_local global i32 0, align 4
@opbd_err_handler = common dso_local global i32 0, align 4
@FSP2_MCUE = common dso_local global i32 0, align 4
@mcue_handler = common dso_local global i32 0, align 4
@FSP2_RST_WRN = common dso_local global i32 0, align 4
@rst_wrn_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @critical_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @critical_irq_setup() #0 {
  %1 = load i32, i32* @FSP2_CMU_ERR, align 4
  %2 = load i32, i32* @cmu_err_handler, align 4
  %3 = call i32 @node_irq_request(i32 %1, i32 %2)
  %4 = load i32, i32* @FSP2_BUS_ERR, align 4
  %5 = load i32, i32* @bus_err_handler, align 4
  %6 = call i32 @node_irq_request(i32 %4, i32 %5)
  %7 = load i32, i32* @FSP2_CONF_ERR, align 4
  %8 = load i32, i32* @conf_err_handler, align 4
  %9 = call i32 @node_irq_request(i32 %7, i32 %8)
  %10 = load i32, i32* @FSP2_OPBD_ERR, align 4
  %11 = load i32, i32* @opbd_err_handler, align 4
  %12 = call i32 @node_irq_request(i32 %10, i32 %11)
  %13 = load i32, i32* @FSP2_MCUE, align 4
  %14 = load i32, i32* @mcue_handler, align 4
  %15 = call i32 @node_irq_request(i32 %13, i32 %14)
  %16 = load i32, i32* @FSP2_RST_WRN, align 4
  %17 = load i32, i32* @rst_wrn_handler, align 4
  %18 = call i32 @node_irq_request(i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @node_irq_request(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
