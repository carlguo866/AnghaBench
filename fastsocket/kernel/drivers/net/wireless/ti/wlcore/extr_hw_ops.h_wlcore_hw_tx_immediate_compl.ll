; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_tx_immediate_compl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_tx_immediate_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*)* @wlcore_hw_tx_immediate_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_hw_tx_immediate_compl(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %3 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %4 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %6, align 8
  %8 = icmp ne i32 (%struct.wl1271*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %13, align 8
  %15 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %16 = call i32 %14(%struct.wl1271* %15)
  br label %17

17:                                               ; preds = %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
