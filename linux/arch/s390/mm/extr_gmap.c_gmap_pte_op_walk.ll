; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_pte_op_walk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_pte_op_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32 }

@_SEGMENT_ENTRY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.gmap*, i64, i32**)* @gmap_pte_op_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gmap_pte_op_walk(%struct.gmap* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  store %struct.gmap* %0, %struct.gmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.gmap*, %struct.gmap** %5, align 8
  %10 = call i32 @gmap_is_shadow(%struct.gmap* %9)
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.gmap*, %struct.gmap** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64* @gmap_table_walk(%struct.gmap* %12, i64 %13, i32 1)
  store i64* %14, i64** %8, align 8
  %15 = load i64*, i64** %8, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @_SEGMENT_ENTRY_INVALID, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %3
  store i32* null, i32** %4, align 8
  br label %33

24:                                               ; preds = %17
  %25 = load %struct.gmap*, %struct.gmap** %5, align 8
  %26 = getelementptr inbounds %struct.gmap, %struct.gmap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64*, i64** %8, align 8
  %29 = bitcast i64* %28 to i32*
  %30 = load i64, i64* %6, align 8
  %31 = load i32**, i32*** %7, align 8
  %32 = call i32* @pte_alloc_map_lock(i32 %27, i32* %29, i64 %30, i32** %31)
  store i32* %32, i32** %4, align 8
  br label %33

33:                                               ; preds = %24, %23
  %34 = load i32*, i32** %4, align 8
  ret i32* %34
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i64* @gmap_table_walk(%struct.gmap*, i64, i32) #1

declare dso_local i32* @pte_alloc_map_lock(i32, i32*, i64, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
