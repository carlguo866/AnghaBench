; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/rosinternals/nfi/extr_nfi.c_FindInCache.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/rosinternals/nfi/extr_nfi.c_FindInCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@CacheHead = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @FindInCache(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CacheHead, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %2, align 8
  br label %23

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %4, align 8
  br label %6

22:                                               ; preds = %6
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %23

23:                                               ; preds = %22, %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
