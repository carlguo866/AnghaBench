; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_ethtool.c_ethtool_op_set_tx_hw_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_ethtool.c_ethtool_op_set_tx_hw_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethtool_op_set_tx_hw_csum(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %13, %7
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
