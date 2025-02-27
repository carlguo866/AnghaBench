; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_buffer.c_hcd_buffer_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_buffer.c_hcd_buffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.dma_pool** }
%struct.dma_pool = type { i32 }

@HCD_BUFFER_POOLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hcd_buffer_destroy(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_pool*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @HCD_BUFFER_POOLS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = load %struct.dma_pool**, %struct.dma_pool*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.dma_pool*, %struct.dma_pool** %12, i64 %14
  %16 = load %struct.dma_pool*, %struct.dma_pool** %15, align 8
  store %struct.dma_pool* %16, %struct.dma_pool** %4, align 8
  %17 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %18 = icmp ne %struct.dma_pool* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %9
  %20 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %21 = call i32 @dma_pool_destroy(%struct.dma_pool* %20)
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %23 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %22, i32 0, i32 0
  %24 = load %struct.dma_pool**, %struct.dma_pool*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dma_pool*, %struct.dma_pool** %24, i64 %26
  store %struct.dma_pool* null, %struct.dma_pool** %27, align 8
  br label %28

28:                                               ; preds = %19, %9
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dma_pool_destroy(%struct.dma_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
