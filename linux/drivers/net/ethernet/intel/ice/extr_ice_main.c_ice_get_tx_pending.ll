; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_get_tx_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_get_tx_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ice_ring*)* @ice_get_tx_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ice_get_tx_pending(%struct.ice_ring* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ice_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %3, align 8
  %6 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %7 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %10 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = sub nsw i64 %20, %21
  br label %31

23:                                               ; preds = %15
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %26 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i64, i64* %4, align 8
  %30 = sub nsw i64 %28, %29
  br label %31

31:                                               ; preds = %23, %19
  %32 = phi i64 [ %22, %19 ], [ %30, %23 ]
  store i64 %32, i64* %2, align 8
  br label %34

33:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
