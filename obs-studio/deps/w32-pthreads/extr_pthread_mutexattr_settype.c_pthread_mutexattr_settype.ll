; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_mutexattr_settype.c_pthread_mutexattr_settype.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_mutexattr_settype.c_pthread_mutexattr_settype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutexattr_settype(%struct.TYPE_3__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %7 = icmp ne %struct.TYPE_3__** %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %19 [
    i32 129, label %14
    i32 128, label %14
    i32 130, label %14
  ]

14:                                               ; preds = %12, %12, %12
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  br label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %14
  br label %24

22:                                               ; preds = %8, %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
