; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_fifo_pad_alloc_one_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_fifo_pad_alloc_one_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_tx_fifo = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_tx_fifo*, i64)* @gve_tx_fifo_pad_alloc_one_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_tx_fifo_pad_alloc_one_frag(%struct.gve_tx_fifo* %0, i64 %1) #0 {
  %3 = alloca %struct.gve_tx_fifo*, align 8
  %4 = alloca i64, align 8
  store %struct.gve_tx_fifo* %0, %struct.gve_tx_fifo** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %3, align 8
  %6 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %7, %8
  %10 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %3, align 8
  %11 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %3, align 8
  %17 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %3, align 8
  %20 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  br label %23

23:                                               ; preds = %15, %14
  %24 = phi i64 [ 0, %14 ], [ %22, %15 ]
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
