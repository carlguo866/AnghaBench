; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_strip.c_TIFFRasterScanlineSize64.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_strip.c_TIFFRasterScanlineSize64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }

@TIFFRasterScanlineSize64.module = internal constant [25 x i8] c"TIFFRasterScanlineSize64\00", align 16
@PLANARCONFIG_CONTIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFRasterScanlineSize64(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @_TIFFMultiply64(%struct.TYPE_6__* %8, i32 %11, i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @TIFFRasterScanlineSize64.module, i64 0, i64 0))
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PLANARCONFIG_CONTIG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @_TIFFMultiply64(%struct.TYPE_6__* %22, i32 %23, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @TIFFRasterScanlineSize64.module, i64 0, i64 0))
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @TIFFhowmany8_64(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @TIFFhowmany8_64(i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @_TIFFMultiply64(%struct.TYPE_6__* %31, i32 %33, i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @TIFFRasterScanlineSize64.module, i64 0, i64 0))
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %30, %21
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @_TIFFMultiply64(%struct.TYPE_6__*, i32, i32, i8*) #1

declare dso_local i32 @TIFFhowmany8_64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
