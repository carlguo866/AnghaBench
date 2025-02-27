; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bdx_priv = type { i32, i32, i32, i32 }

@ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bdx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bdx_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load i32, i32* @ENTER, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bdx_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bdx_priv* %8, %struct.bdx_priv** %4, align 8
  %9 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %10 = call i32 @bdx_reset(%struct.bdx_priv* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i64 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %16 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_stop_queue(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %21 = call i32 @bdx_tx_init(%struct.bdx_priv* %20)
  store i32 %21, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %52

24:                                               ; preds = %19
  %25 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %26 = call i32 @bdx_rx_init(%struct.bdx_priv* %25)
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %52

29:                                               ; preds = %24
  %30 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %31 = call i32 @bdx_fw_load(%struct.bdx_priv* %30)
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %52

34:                                               ; preds = %29
  %35 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %36 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %37 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %36, i32 0, i32 2
  %38 = call i32 @bdx_rx_alloc_skbs(%struct.bdx_priv* %35, i32* %37)
  %39 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %40 = call i32 @bdx_hw_start(%struct.bdx_priv* %39)
  store i32 %40, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %52

43:                                               ; preds = %34
  %44 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %45 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %44, i32 0, i32 1
  %46 = call i32 @napi_enable(i32* %45)
  %47 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %48 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @print_fw_id(i32 %49)
  %51 = call i32 @RET(i32 0)
  br label %52

52:                                               ; preds = %43, %42, %33, %28, %23
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @bdx_close(%struct.net_device* %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @RET(i32 %55)
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.bdx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bdx_reset(%struct.bdx_priv*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @bdx_tx_init(%struct.bdx_priv*) #1

declare dso_local i32 @bdx_rx_init(%struct.bdx_priv*) #1

declare dso_local i32 @bdx_fw_load(%struct.bdx_priv*) #1

declare dso_local i32 @bdx_rx_alloc_skbs(%struct.bdx_priv*, i32*) #1

declare dso_local i32 @bdx_hw_start(%struct.bdx_priv*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @print_fw_id(i32) #1

declare dso_local i32 @RET(i32) #1

declare dso_local i32 @bdx_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
