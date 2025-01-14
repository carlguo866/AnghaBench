; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_ser_unix_wait_for.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_ser_unix_wait_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i64 }
%struct.timeval = type { i32, i64 }

@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@SERIAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ser_unix_wait_for(%struct.serial* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serial*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serial* %0, %struct.serial** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %10

10:                                               ; preds = %2, %50
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = call i32 @FD_ZERO(i32* %8)
  %15 = call i32 @FD_ZERO(i32* %9)
  %16 = load %struct.serial*, %struct.serial** %4, align 8
  %17 = getelementptr inbounds %struct.serial, %struct.serial* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @FD_SET(i64 %18, i32* %8)
  %20 = load %struct.serial*, %struct.serial** %4, align 8
  %21 = getelementptr inbounds %struct.serial, %struct.serial* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @FD_SET(i64 %22, i32* %9)
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %10
  %27 = load %struct.serial*, %struct.serial** %4, align 8
  %28 = getelementptr inbounds %struct.serial, %struct.serial* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @select(i64 %30, i32* %8, i32 0, i32* %9, %struct.timeval* %7)
  store i32 %31, i32* %6, align 4
  br label %38

32:                                               ; preds = %10
  %33 = load %struct.serial*, %struct.serial** %4, align 8
  %34 = getelementptr inbounds %struct.serial, %struct.serial* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @select(i64 %36, i32* %8, i32 0, i32* %9, %struct.timeval* null)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %6, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @SERIAL_TIMEOUT, align 4
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %41
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EINTR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %10

51:                                               ; preds = %46
  %52 = load i32, i32* @SERIAL_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %51, %44
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
