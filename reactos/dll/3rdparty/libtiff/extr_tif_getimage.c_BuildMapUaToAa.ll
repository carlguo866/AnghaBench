; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_BuildMapUaToAa.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_BuildMapUaToAa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BuildMapUaToAa.module = internal constant [15 x i8] c"BuildMapUaToAa\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @BuildMapUaToAa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BuildMapUaToAa(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = icmp eq i64* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = call i64* @_TIFFmalloc(i32 65536)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i64* %13, i64** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TIFFErrorExt(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @BuildMapUaToAa.module, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

27:                                               ; preds = %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %51, %27
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %41, 127
  %43 = sdiv i32 %42, 255
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %4, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %4, align 8
  store i64 %44, i64* %45, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %35

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %31

54:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64* @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
