; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"must be stopped to change its MTU\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @tse_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tse_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call i64 @netif_running(%struct.net_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @netdev_err(%struct.net_device* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @netdev_update_features(%struct.net_device* %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %9
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
