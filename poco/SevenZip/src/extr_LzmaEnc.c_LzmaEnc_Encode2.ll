; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaEnc.c_LzmaEnc_Encode2.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaEnc.c_LzmaEnc_Encode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_8__*, i32, i32)* }

@SZ_OK = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@SZ_ERROR_PROGRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @LzmaEnc_Encode2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LzmaEnc_Encode2(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [768 x i64], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load i64, i64* @SZ_OK, align 8
  store i64 %8, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %18, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [768 x i64], [768 x i64]* %6, i64 0, i64 %16
  store i64 %14, i64* %17, align 8
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %9

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %56, %21
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = load i32, i32* @False, align 4
  %25 = call i64 @LzmaEnc_CodeOneBlock(%struct.TYPE_9__* %23, i32 %24, i32 0, i32 0)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @SZ_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %22
  br label %57

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64 (%struct.TYPE_8__*, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32)** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = call i32 @RangeEnc_GetProcessed(i32* %47)
  %49 = call i64 %41(%struct.TYPE_8__* %42, i32 %45, i32 %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @SZ_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i64, i64* @SZ_ERROR_PROGRESS, align 8
  store i64 %54, i64* %5, align 8
  br label %57

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %35
  br label %22

57:                                               ; preds = %53, %34
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = call i32 @LzmaEnc_Finish(%struct.TYPE_9__* %58)
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i64 @LzmaEnc_CodeOneBlock(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @RangeEnc_GetProcessed(i32*) #1

declare dso_local i32 @LzmaEnc_Finish(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
