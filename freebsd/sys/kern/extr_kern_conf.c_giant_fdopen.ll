; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_giant_fdopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_giant_fdopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.file = type { i32 }
%struct.cdevsw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)* }

@ENXIO = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)* @giant_fdopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @giant_fdopen(%struct.cdev* %0, i32 %1, %struct.thread* %2, %struct.file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.cdevsw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.thread* %2, %struct.thread** %8, align 8
  store %struct.file* %3, %struct.file** %9, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %13, i32* %11)
  store %struct.cdevsw* %14, %struct.cdevsw** %10, align 8
  %15 = load %struct.cdevsw*, %struct.cdevsw** %10, align 8
  %16 = icmp eq %struct.cdevsw* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %5, align 4
  br label %36

19:                                               ; preds = %4
  %20 = call i32 @mtx_lock(i32* @Giant)
  %21 = load %struct.cdevsw*, %struct.cdevsw** %10, align 8
  %22 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)*, i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)** %24, align 8
  %26 = load %struct.cdev*, %struct.cdev** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.thread*, %struct.thread** %8, align 8
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = call i32 %25(%struct.cdev* %26, i32 %27, %struct.thread* %28, %struct.file* %29)
  store i32 %30, i32* %12, align 4
  %31 = call i32 @mtx_unlock(i32* @Giant)
  %32 = load %struct.cdev*, %struct.cdev** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @dev_relthread(%struct.cdev* %32, i32 %33)
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %19, %17
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.cdevsw* @dev_refthread(%struct.cdev*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
