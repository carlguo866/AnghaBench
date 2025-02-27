; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_reuse_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_reuse_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, %struct.ixgbe_rx_buffer* }
%struct.ixgbe_rx_buffer = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*)* @ixgbe_reuse_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_reuse_rx_page(%struct.ixgbe_ring* %0, %struct.ixgbe_rx_buffer* %1) #0 {
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca %struct.ixgbe_rx_buffer*, align 8
  %5 = alloca %struct.ixgbe_rx_buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  store %struct.ixgbe_rx_buffer* %1, %struct.ixgbe_rx_buffer** %4, align 8
  %7 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %10, i32 0, i32 2
  %12 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %12, i64 %13
  store %struct.ixgbe_rx_buffer* %14, %struct.ixgbe_rx_buffer** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ %23, %22 ], [ 0, %24 ]
  %27 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
