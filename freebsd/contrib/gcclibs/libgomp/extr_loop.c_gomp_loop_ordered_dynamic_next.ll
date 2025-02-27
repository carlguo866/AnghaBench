; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_loop.c_gomp_loop_ordered_dynamic_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_loop.c_gomp_loop_ordered_dynamic_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*)* @gomp_loop_ordered_dynamic_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gomp_loop_ordered_dynamic_next(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.gomp_thread*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %7, %struct.gomp_thread** %5, align 8
  %8 = call i32 (...) @gomp_ordered_sync()
  %9 = load %struct.gomp_thread*, %struct.gomp_thread** %5, align 8
  %10 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @gomp_mutex_lock(i32* %13)
  %15 = load i64*, i64** %3, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = call i32 @gomp_iter_dynamic_next_locked(i64* %15, i64* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @gomp_ordered_next()
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @gomp_ordered_last()
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.gomp_thread*, %struct.gomp_thread** %5, align 8
  %26 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @gomp_mutex_unlock(i32* %29)
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i32 @gomp_ordered_sync(...) #1

declare dso_local i32 @gomp_mutex_lock(i32*) #1

declare dso_local i32 @gomp_iter_dynamic_next_locked(i64*, i64*) #1

declare dso_local i32 @gomp_ordered_next(...) #1

declare dso_local i32 @gomp_ordered_last(...) #1

declare dso_local i32 @gomp_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
