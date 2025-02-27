; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_dimension_scan_update.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_dimension_scan_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32, i32, i32*, i32, i32 }

@ForwardScanDirection = common dso_local global i32 0, align 4
@DIMENSION = common dso_local global i32 0, align 4
@DIMENSION_ID_IDX = common dso_local global i32 0, align 4
@Anum_dimension_id_idx_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @dimension_scan_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dimension_scan_update(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [1 x i32], align 4
  %11 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32* (...) @ts_catalog_get()
  store i32* %12, i32** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %18 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 7
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* @DIMENSION, align 4
  %28 = load i32, i32* @DIMENSION_ID_IDX, align 4
  %29 = call i32 @catalog_get_index(i32* %26, i32 %27, i32 %28)
  store i32 %29, i32* %25, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @DIMENSION, align 4
  %33 = call i32 @catalog_get_table_id(i32* %31, i32 %32)
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %35 = load i32, i32* @Anum_dimension_id_idx_id, align 4
  %36 = load i32, i32* @BTEqualStrategyNumber, align 4
  %37 = load i32, i32* @F_INT4EQ, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @Int32GetDatum(i32 %38)
  %40 = call i32 @ScanKeyInit(i32* %34, i32 %35, i32 %36, i32 %37, i32 %39)
  %41 = call i32 @ts_scanner_scan(%struct.TYPE_3__* %11)
  ret i32 %41
}

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @catalog_get_index(i32*, i32, i32) #1

declare dso_local i32 @catalog_get_table_id(i32*, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @ts_scanner_scan(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
