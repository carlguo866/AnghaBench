; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_get_device_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_get_device_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @opencl_get_device_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @opencl_get_device_string(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @clGetDeviceInfo(i32 %9, i32 %10, i64 0, i8* null, i64* %7)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @CL_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %44

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = call i8* @av_malloc(i64 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %44

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @clGetDeviceInfo(i32 %23, i32 %24, i64 %25, i8* %26, i64* %7)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @CL_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @av_free(i8* %32)
  store i8* null, i8** %3, align 8
  br label %44

34:                                               ; preds = %22
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @av_assert0(i32 %41)
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %34, %31, %21, %15
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i64 @clGetDeviceInfo(i32, i32, i64, i8*, i64*) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
