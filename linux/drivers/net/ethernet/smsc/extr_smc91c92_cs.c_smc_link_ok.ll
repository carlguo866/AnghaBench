; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_link_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_link_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smc_private = type { i32, i32 }

@CFG_MII_SELECT = common dso_local global i32 0, align 4
@EPH = common dso_local global i64 0, align 8
@EPH_LINK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smc_link_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_link_ok(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.smc_private* @netdev_priv(%struct.net_device* %9)
  store %struct.smc_private* %10, %struct.smc_private** %5, align 8
  %11 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %12 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CFG_MII_SELECT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %19 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %18, i32 0, i32 1
  %20 = call i32 @mii_link_ok(i32* %19)
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = call i32 @SMC_SELECT_BANK(i32 0)
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @EPH, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inw(i64 %26)
  %28 = load i32, i32* @EPH_LINK_OK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_link_ok(i32*) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
