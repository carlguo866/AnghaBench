; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_target_dem_fuzzer.c_io_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_target_dem_fuzzer.c_io_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@SEEK_CUR = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @io_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @io_seek(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SEEK_CUR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @INT64_MAX, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = icmp sgt i64 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i64 -1, i64* %4, align 8
  br label %63

23:                                               ; preds = %14
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %6, align 8
  br label %49

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SEEK_END, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @INT64_MAX, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = icmp sgt i64 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i64 -1, i64* %4, align 8
  br label %63

42:                                               ; preds = %33
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %42, %29
  br label %49

49:                                               ; preds = %48, %23
  %50 = load i64, i64* %6, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %49
  store i64 -1, i64* %4, align 8
  br label %63

59:                                               ; preds = %52
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  store i64 0, i64* %4, align 8
  br label %63

63:                                               ; preds = %59, %58, %41, %22
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
