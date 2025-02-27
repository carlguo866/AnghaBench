; ModuleID = '/home/carl/AnghaBench/htop/openbsd/extr_Battery.c_findDevice.c'
source_filename = "/home/carl/AnghaBench/htop/openbsd/extr_Battery.c_findDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensordev = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.sensordev*, i64*)* @findDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findDevice(i8* %0, i32* %1, %struct.sensordev* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sensordev*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.sensordev* %2, %struct.sensordev** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %40, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.sensordev*, %struct.sensordev** %8, align 8
  %17 = load i64*, i64** %9, align 8
  %18 = call i32 @sysctl(i32* %15, i32 3, %struct.sensordev* %16, i64* %17, i32* null, i32 0)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %31

20:                                               ; preds = %11
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ENXIO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %40

25:                                               ; preds = %20
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ENOENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %43

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %11
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.sensordev*, %struct.sensordev** %8, align 8
  %34 = getelementptr inbounds %struct.sensordev, %struct.sensordev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i8* %32, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %43

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %11

43:                                               ; preds = %38, %29
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @sysctl(i32*, i32, %struct.sensordev*, i64*, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
