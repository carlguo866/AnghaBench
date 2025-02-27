; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_free_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_free_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, %struct.rx_ring* }
%struct.rx_ring = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_free_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_rx_buffers(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rx_ring*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %5
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 1
  %14 = load %struct.rx_ring*, %struct.rx_ring** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %14, i64 %16
  store %struct.rx_ring* %17, %struct.rx_ring** %4, align 8
  %18 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %24 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %25 = call i32 @ql_free_lbq_buffers(%struct.ql_adapter* %23, %struct.rx_ring* %24)
  br label %26

26:                                               ; preds = %22, %11
  %27 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %28 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %33 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %34 = call i32 @ql_free_sbq_buffers(%struct.ql_adapter* %32, %struct.rx_ring* %33)
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %5

39:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ql_free_lbq_buffers(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local i32 @ql_free_sbq_buffers(%struct.ql_adapter*, %struct.rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
