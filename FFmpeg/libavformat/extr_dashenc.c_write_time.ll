; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_write_time.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_write_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_TIME_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"PT\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%dH\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%dM\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d.%dS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @write_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_time(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AV_TIME_BASE, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AV_TIME_BASE, align 4
  %14 = srem i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %15, 60
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 60
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 60
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = srem i32 %21, 60
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @avio_printf(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32*, i8*, ...) @avio_printf(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32*, i8*, ...) @avio_printf(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @AV_TIME_BASE, align 4
  %46 = sdiv i32 %45, 10
  %47 = sdiv i32 %44, %46
  %48 = call i32 (i32*, i8*, ...) @avio_printf(i32* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 %47)
  ret void
}

declare dso_local i32 @avio_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
