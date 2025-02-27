; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_vm_init.c_pmap_next_page_reserved.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_vm_init.c_pmap_next_page_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32 }

@pmap_reserved_ranges = common dso_local global i64 0, align 8
@pmap_last_reserved_range_index = common dso_local global i64 0, align 8
@pmap_reserved_range_indices = common dso_local global i64* null, align 8
@pmap_memory_regions = common dso_local global %struct.TYPE_3__* null, align 8
@avail_remaining = common dso_local global i32 0, align 4
@max_ppnum = common dso_local global i64 0, align 8
@lowest_lo = common dso_local global i64 0, align 8
@pmap_reserved_pages_allocated = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_next_page_reserved(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %7 = load i64, i64* @pmap_reserved_ranges, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %64

9:                                                ; preds = %1
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %60, %9
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @pmap_last_reserved_range_index, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %10
  %15 = load i64*, i64** @pmap_reserved_range_indices, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmap_memory_regions, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %14
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load i64*, i64** %3, align 8
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @avail_remaining, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @avail_remaining, align 4
  %37 = load i64*, i64** %3, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @max_ppnum, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i64*, i64** %3, align 8
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* @max_ppnum, align 8
  br label %44

44:                                               ; preds = %41, %29
  %45 = load i64, i64* @lowest_lo, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i64*, i64** %3, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @lowest_lo, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %44
  %53 = load i64*, i64** %3, align 8
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* @lowest_lo, align 8
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* @pmap_reserved_pages_allocated, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @pmap_reserved_pages_allocated, align 4
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %2, align 4
  br label %66

59:                                               ; preds = %14
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %4, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %4, align 8
  br label %10

63:                                               ; preds = %10
  br label %64

64:                                               ; preds = %63, %1
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %55
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
