; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_can_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_can_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_tx_ring = type { i32 }

@MAX_TX_DESC_NEEDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_tx_ring*, i32)* @gve_can_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_can_tx(%struct.gve_tx_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.gve_tx_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.gve_tx_ring* %0, %struct.gve_tx_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %3, align 8
  %6 = call i64 @gve_tx_avail(%struct.gve_tx_ring* %5)
  %7 = load i64, i64* @MAX_TX_DESC_NEEDED, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %3, align 8
  %11 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @gve_tx_fifo_can_alloc(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i1 [ false, %2 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @gve_tx_avail(%struct.gve_tx_ring*) #1

declare dso_local i64 @gve_tx_fifo_can_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
