; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_tx_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.e1000_tx_ring*, i32)* @e1000_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_maybe_stop_tx(%struct.net_device* %0, %struct.e1000_tx_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.e1000_tx_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.e1000_tx_ring* %1, %struct.e1000_tx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %6, align 8
  %9 = call i32 @E1000_DESC_UNUSED(%struct.e1000_tx_ring* %8)
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @__e1000_maybe_stop_tx(%struct.net_device* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @E1000_DESC_UNUSED(%struct.e1000_tx_ring*) #1

declare dso_local i32 @__e1000_maybe_stop_tx(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
