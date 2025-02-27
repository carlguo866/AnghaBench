; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_getvnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_getvnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32*, i32* }

@badfileops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getvnode(%struct.thread* %0, i32 %1, i32* %2, %struct.file** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.file**, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.file** %3, %struct.file*** %9, align 8
  %12 = load %struct.thread*, %struct.thread** %6, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @fget_unlocked(i32 %16, i32 %17, i32* %18, %struct.file** %10, i32* null)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %42

24:                                               ; preds = %4
  %25 = load %struct.file*, %struct.file** %10, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.file*, %struct.file** %10, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, @badfileops
  br i1 %33, label %34, label %39

34:                                               ; preds = %29, %24
  %35 = load %struct.file*, %struct.file** %10, align 8
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = call i32 @fdrop(%struct.file* %35, %struct.thread* %36)
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %42

39:                                               ; preds = %29
  %40 = load %struct.file*, %struct.file** %10, align 8
  %41 = load %struct.file**, %struct.file*** %9, align 8
  store %struct.file* %40, %struct.file** %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %34, %22
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @fget_unlocked(i32, i32, i32*, %struct.file**, i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
