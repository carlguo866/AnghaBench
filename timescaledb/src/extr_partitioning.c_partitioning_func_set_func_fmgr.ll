; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_partitioning.c_partitioning_func_set_func_fmgr.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_partitioning.c_partitioning_func_set_func_fmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@DIMENSION_TYPE_CLOSED = common dso_local global i64 0, align 8
@closed_dim_partitioning_func_filter = common dso_local global i32 0, align 4
@open_dim_partitioning_func_filter = common dso_local global i32 0, align 4
@DIMENSION_TYPE_OPEN = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid dimension type %u\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid partitioning function\00", align 1
@.str.2 = private unnamed_addr constant [120 x i8] c"A partitioning function for a closed (space) dimension must be IMMUTABLE and have the signature (anyelement) -> integer\00", align 1
@.str.3 = private unnamed_addr constant [123 x i8] c"A partitioning function for a open (time) dimension must be IMMUTABLE, take one argument, and return a supported time type\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i64)* @partitioning_func_set_func_fmgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @partitioning_func_set_func_fmgr(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @DIMENSION_TYPE_CLOSED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @closed_dim_partitioning_func_filter, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @open_dim_partitioning_func_filter, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @DIMENSION_TYPE_CLOSED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @DIMENSION_TYPE_OPEN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %25, %21, %16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ts_lookup_proc_filtered(i32 %32, i32 %35, i32* %37, i32 %38, i32* %5)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @OidIsValid(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %29
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @DIMENSION_TYPE_CLOSED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @ERROR, align 4
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @errhint(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @ereport(i32 %48, i32 %50)
  br label %57

52:                                               ; preds = %43
  %53 = load i32, i32* @ERROR, align 4
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @errhint(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @ereport(i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %29
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* @CurrentMemoryContext, align 4
  %63 = call i32 @fmgr_info_cxt(i32 %59, i32* %61, i32 %62)
  ret void
}

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @ts_lookup_proc_filtered(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @fmgr_info_cxt(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
