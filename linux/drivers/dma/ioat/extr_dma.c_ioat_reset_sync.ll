; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dma.c_ioat_reset_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dma.c_ioat_reset_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_chan = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioatdma_chan*, i64)* @ioat_reset_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_reset_sync(%struct.ioatdma_chan* %0, i64 %1) #0 {
  %3 = alloca %struct.ioatdma_chan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ioatdma_chan* %0, %struct.ioatdma_chan** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %7, %8
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %11 = call i32 @ioat_reset(%struct.ioatdma_chan* %10)
  br label %12

12:                                               ; preds = %27, %2
  %13 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %14 = call i64 @ioat_reset_pending(%struct.ioatdma_chan* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @time_after(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ETIMEDOUT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %29

27:                                               ; preds = %19, %16
  %28 = call i32 (...) @cpu_relax()
  br label %12

29:                                               ; preds = %24, %12
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @ioat_reset(%struct.ioatdma_chan*) #1

declare dso_local i64 @ioat_reset_pending(%struct.ioatdma_chan*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
