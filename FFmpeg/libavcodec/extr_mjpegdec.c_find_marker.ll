; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_find_marker.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_find_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOF0 = common dso_local global i32 0, align 4
@COM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"find_marker skipped %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @find_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_marker(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32**, i32*** %3, align 8
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  br label %12

12:                                               ; preds = %44, %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = ptrtoint i32* %13 to i64
  %16 = ptrtoint i32* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = icmp sgt i64 %18, 1
  br i1 %19, label %20, label %47

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SOF0, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @COM, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = icmp ult i32* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  %43 = load i32, i32* %41, align 4
  store i32 %43, i32* %8, align 4
  br label %49

44:                                               ; preds = %36, %32, %28, %20
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %12

47:                                               ; preds = %12
  %48 = load i32*, i32** %4, align 8
  store i32* %48, i32** %5, align 8
  store i32 -1, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ff_dlog(i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32**, i32*** %3, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @ff_dlog(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
