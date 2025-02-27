; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sunqe = type { i32 }

@MREGS_MCONFIG_TXENAB = common dso_local global i32 0, align 4
@MREGS_MCONFIG_RXENAB = common dso_local global i32 0, align 4
@MREGS_MCONFIG_MBAENAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sunqe*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sunqe* @netdev_priv(%struct.net_device* %4)
  store %struct.sunqe* %5, %struct.sunqe** %3, align 8
  %6 = load i32, i32* @MREGS_MCONFIG_TXENAB, align 4
  %7 = load i32, i32* @MREGS_MCONFIG_RXENAB, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MREGS_MCONFIG_MBAENAB, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %12 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %14 = call i32 @qe_init(%struct.sunqe* %13, i32 0)
  ret i32 %14
}

declare dso_local %struct.sunqe* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qe_init(%struct.sunqe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
