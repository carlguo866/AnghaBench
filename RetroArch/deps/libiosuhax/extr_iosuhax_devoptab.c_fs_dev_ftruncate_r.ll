; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_ftruncate_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_ftruncate_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, i32)* @fs_dev_ftruncate_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_ftruncate_r(%struct._reent* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load %struct._reent*, %struct._reent** %5, align 8
  %12 = icmp ne %struct._reent* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %34

14:                                               ; preds = %3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = load %struct._reent*, %struct._reent** %5, align 8
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 -1, i32* %4, align 4
  br label %34

21:                                               ; preds = %14
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = load %struct._reent*, %struct._reent** %5, align 8
  %29 = getelementptr inbounds %struct._reent, %struct._reent* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 -1, i32* %4, align 4
  br label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOTSUP, align 4
  %32 = load %struct._reent*, %struct._reent** %5, align 8
  %33 = getelementptr inbounds %struct._reent, %struct._reent* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 -1, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %26, %17, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
