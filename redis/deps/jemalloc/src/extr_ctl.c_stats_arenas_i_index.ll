; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ctl.c_stats_arenas_i_index.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ctl.c_stats_arenas_i_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@ctl_mtx = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@ctl_arenas = common dso_local global %struct.TYPE_4__* null, align 8
@super_stats_arenas_i_node = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64*, i64, i64)* @stats_arenas_i_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stats_arenas_i_index(i32* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @malloc_mutex_lock(i32* %11, i32* @ctl_mtx)
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @arenas_i2a_impl(i64 %13, i32 1, i32 1)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @UINT_MAX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctl_arenas, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %20, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18, %4
  store i32* null, i32** %9, align 8
  br label %31

29:                                               ; preds = %18
  %30 = load i32*, i32** @super_stats_arenas_i_node, align 8
  store i32* %30, i32** %9, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @malloc_mutex_unlock(i32* %32, i32* @ctl_mtx)
  %34 = load i32*, i32** %9, align 8
  ret i32* %34
}

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i64 @arenas_i2a_impl(i64, i32, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
