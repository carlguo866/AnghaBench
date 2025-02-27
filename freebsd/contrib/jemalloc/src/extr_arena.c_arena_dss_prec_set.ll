; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_dss_prec_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_dss_prec_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@have_dss = common dso_local global i32 0, align 4
@dss_prec_disabled = common dso_local global i64 0, align 8
@ATOMIC_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arena_dss_prec_set(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @have_dss, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @dss_prec_disabled, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @ATOMIC_RELEASE, align 4
  %19 = call i32 @atomic_store_u(i32* %15, i32 %17, i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %13, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @atomic_store_u(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
