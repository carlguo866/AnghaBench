; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_vfs_test_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_vfs_test_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, i32, %struct.file_lock*)* }
%struct.file_lock = type { i32 }

@F_GETLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_test_lock(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file_lock*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %14, align 8
  %16 = icmp ne i32 (%struct.file*, i32, %struct.file_lock*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %21, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = load i32, i32* @F_GETLK, align 4
  %25 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %26 = call i32 %22(%struct.file* %23, i32 %24, %struct.file_lock* %25)
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %10, %2
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %30 = call i32 @posix_test_lock(%struct.file* %28, %struct.file_lock* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @posix_test_lock(%struct.file*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
