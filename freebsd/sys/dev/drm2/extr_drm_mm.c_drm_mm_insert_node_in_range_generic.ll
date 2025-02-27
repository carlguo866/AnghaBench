; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_insert_node_in_range_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_insert_node_in_range_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32 }
%struct.drm_mm_node = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mm_insert_node_in_range_generic(%struct.drm_mm* %0, %struct.drm_mm_node* %1, i64 %2, i32 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_mm*, align 8
  %10 = alloca %struct.drm_mm_node*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm* %0, %struct.drm_mm** %9, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load %struct.drm_mm*, %struct.drm_mm** %9, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* %15, align 8
  %23 = call %struct.drm_mm_node* @drm_mm_search_free_in_range_generic(%struct.drm_mm* %17, i64 %18, i32 %19, i64 %20, i64 %21, i64 %22, i32 0)
  store %struct.drm_mm_node* %23, %struct.drm_mm_node** %16, align 8
  %24 = load %struct.drm_mm_node*, %struct.drm_mm_node** %16, align 8
  %25 = icmp ne %struct.drm_mm_node* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %38

29:                                               ; preds = %7
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %16, align 8
  %31 = load %struct.drm_mm_node*, %struct.drm_mm_node** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = call i32 @drm_mm_insert_helper_range(%struct.drm_mm_node* %30, %struct.drm_mm_node* %31, i64 %32, i32 %33, i64 %34, i64 %35, i64 %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %29, %26
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %struct.drm_mm_node* @drm_mm_search_free_in_range_generic(%struct.drm_mm*, i64, i32, i64, i64, i64, i32) #1

declare dso_local i32 @drm_mm_insert_helper_range(%struct.drm_mm_node*, %struct.drm_mm_node*, i64, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
