; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_api.c_ixgbe_disable_tx_laser.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_api.c_ixgbe_disable_tx_laser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_disable_tx_laser(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %3 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %6, align 8
  %8 = icmp ne i32 (%struct.ixgbe_hw.0*)* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %13, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = bitcast %struct.ixgbe_hw* %15 to %struct.ixgbe_hw.0*
  %17 = call i32 %14(%struct.ixgbe_hw.0* %16)
  br label %18

18:                                               ; preds = %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
