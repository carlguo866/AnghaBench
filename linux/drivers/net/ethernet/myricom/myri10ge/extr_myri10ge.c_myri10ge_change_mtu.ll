; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.myri10ge_priv = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"changing mtu from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @myri10ge_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.myri10ge_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.myri10ge_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.myri10ge_priv* %7, %struct.myri10ge_priv** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @netdev_info(%struct.net_device* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %15 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @myri10ge_close(%struct.net_device* %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @myri10ge_open(%struct.net_device* %24)
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %18
  ret i32 0
}

declare dso_local %struct.myri10ge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @myri10ge_close(%struct.net_device*) #1

declare dso_local i32 @myri10ge_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
