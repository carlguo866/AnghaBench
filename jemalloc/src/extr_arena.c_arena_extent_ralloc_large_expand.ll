; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_extent_ralloc_large_expand.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_extent_ralloc_large_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@config_stats = common dso_local global i64 0, align 8
@LG_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arena_extent_ralloc_large_expand(i32* %0, %struct.TYPE_5__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @extent_usize_get(i32* %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = sub i64 %13, %14
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* @config_stats, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @arena_stats_lock(i32* %19, i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @arena_large_ralloc_stats_update(i32* %23, %struct.TYPE_5__* %24, i64 %25, i64 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @arena_stats_unlock(i32* %28, i32* %30)
  br label %32

32:                                               ; preds = %18, %4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @LG_PAGE, align 8
  %36 = lshr i64 %34, %35
  %37 = call i32 @arena_nactive_add(%struct.TYPE_5__* %33, i64 %36)
  ret void
}

declare dso_local i64 @extent_usize_get(i32*) #1

declare dso_local i32 @arena_stats_lock(i32*, i32*) #1

declare dso_local i32 @arena_large_ralloc_stats_update(i32*, %struct.TYPE_5__*, i64, i64) #1

declare dso_local i32 @arena_stats_unlock(i32*, i32*) #1

declare dso_local i32 @arena_nactive_add(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
