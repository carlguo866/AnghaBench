; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Reducing MTU because no SG offload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @xennet_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NETIF_F_SG, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ETH_DATA_LEN, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netdev_info(%struct.net_device* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @ETH_DATA_LEN, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %9, %2
  ret i32 0
}

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
