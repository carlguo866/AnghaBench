; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_containing_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_containing_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_debug_entry = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_debug_entry*, %struct.dma_debug_entry*)* @containing_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @containing_match(%struct.dma_debug_entry* %0, %struct.dma_debug_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_debug_entry*, align 8
  %5 = alloca %struct.dma_debug_entry*, align 8
  store %struct.dma_debug_entry* %0, %struct.dma_debug_entry** %4, align 8
  store %struct.dma_debug_entry* %1, %struct.dma_debug_entry** %5, align 8
  %6 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %4, align 8
  %7 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %10 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %16 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %4, align 8
  %19 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %24 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %27 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %4, align 8
  %31 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %4, align 8
  %34 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = icmp sge i64 %29, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %22, %14
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
