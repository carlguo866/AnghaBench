; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_enable_mac_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_enable_mac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w90p910_ether = type { i64 }

@ENTXINTR = common dso_local global i32 0, align 4
@ENRXINTR = common dso_local global i32 0, align 4
@ENRXGD = common dso_local global i32 0, align 4
@ENTXCP = common dso_local global i32 0, align 4
@ENTXBERR = common dso_local global i32 0, align 4
@ENRXBERR = common dso_local global i32 0, align 4
@ENTXABT = common dso_local global i32 0, align 4
@REG_MIEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @w90p910_enable_mac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w90p910_enable_mac_interrupt(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.w90p910_ether*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.w90p910_ether* @netdev_priv(%struct.net_device* %5)
  store %struct.w90p910_ether* %6, %struct.w90p910_ether** %3, align 8
  %7 = load i32, i32* @ENTXINTR, align 4
  %8 = load i32, i32* @ENRXINTR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @ENRXGD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ENTXCP, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @ENTXBERR, align 4
  %15 = load i32, i32* @ENRXBERR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ENTXABT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %23 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_MIEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @__raw_writel(i32 %21, i64 %26)
  ret void
}

declare dso_local %struct.w90p910_ether* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
