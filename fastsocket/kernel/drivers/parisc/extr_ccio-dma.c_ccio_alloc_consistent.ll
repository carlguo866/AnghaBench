; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_ccio-dma.c_ccio_alloc_consistent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_ccio-dma.c_ccio_alloc_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@hwdev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i64*, i32)* @ccio_alloc_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ccio_alloc_consistent(%struct.device* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @get_order(i64 %11)
  %13 = call i64 @__get_free_pages(i32 %10, i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @memset(i8* %18, i32 0, i64 %19)
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %25 = call i64 @ccio_map_single(%struct.device* %21, i8* %22, i64 %23, i32 %24)
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  br label %27

27:                                               ; preds = %17, %4
  %28 = load i8*, i8** %9, align 8
  ret i8* %28
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @ccio_map_single(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
