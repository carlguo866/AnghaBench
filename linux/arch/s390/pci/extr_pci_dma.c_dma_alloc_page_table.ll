; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_dma_alloc_page_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_dma_alloc_page_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dma_page_table_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ZPCI_PT_ENTRIES = common dso_local global i32 0, align 4
@ZPCI_PTE_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* ()* @dma_alloc_page_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @dma_alloc_page_table() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = load i32, i32* @dma_page_table_cache, align 4
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call i64* @kmem_cache_alloc(i32 %4, i32 %5)
  store i64* %6, i64** %2, align 8
  %7 = load i64*, i64** %2, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i64* null, i64** %1, align 8
  br label %27

10:                                               ; preds = %0
  %11 = load i64*, i64** %2, align 8
  store i64* %11, i64** %3, align 8
  br label %12

12:                                               ; preds = %22, %10
  %13 = load i64*, i64** %3, align 8
  %14 = load i64*, i64** %2, align 8
  %15 = load i32, i32* @ZPCI_PT_ENTRIES, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = icmp ult i64* %13, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i64, i64* @ZPCI_PTE_INVALID, align 8
  %21 = load i64*, i64** %3, align 8
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %19
  %23 = load i64*, i64** %3, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %3, align 8
  br label %12

25:                                               ; preds = %12
  %26 = load i64*, i64** %2, align 8
  store i64* %26, i64** %1, align 8
  br label %27

27:                                               ; preds = %25, %9
  %28 = load i64*, i64** %1, align 8
  ret i64* %28
}

declare dso_local i64* @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
