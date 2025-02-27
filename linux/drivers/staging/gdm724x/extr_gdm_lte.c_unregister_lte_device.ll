; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_unregister_lte_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_unregister_lte_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_dev = type { %struct.net_device** }
%struct.net_device = type { i32 }

@MAX_NIC_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_lte_device(%struct.phy_dev* %0) #0 {
  %2 = alloca %struct.phy_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_dev* %0, %struct.phy_dev** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MAX_NIC_TYPE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load %struct.phy_dev*, %struct.phy_dev** %2, align 8
  %11 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %10, i32 0, i32 0
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 %14
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %3, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  br label %25

20:                                               ; preds = %9
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @unregister_netdev(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @free_netdev(%struct.net_device* %23)
  br label %25

25:                                               ; preds = %20, %19
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %5
  ret void
}

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
