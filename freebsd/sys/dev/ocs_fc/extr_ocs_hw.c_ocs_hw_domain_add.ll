; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_domain_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_domain_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64*, i32, %struct.TYPE_10__**, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64 }

@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"bad parameter hw=%p domain=%p\0A\00", align 1
@SLI4_MAX_FCFI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"adding domain %p @ %#x\0A\00", align 1
@SLI4_MAX_FCF_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"adding map of FCF index %d to FCFI %d\0A\00", align 1
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"FCF index %d out of range (max %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"FCFI %#x out of range (max %#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @ocs_hw_domain_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_domain_add(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* @UINT16_MAX, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13, %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = call i32 @ocs_log_err(i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %17, %struct.TYPE_10__* %18)
  %20 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %20, i32* %3, align 4
  br label %100

21:                                               ; preds = %13
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @SLI4_MAX_FCFI, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %21
  %29 = load i64, i64* @UINT16_MAX, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %33, i64 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %39, i64 %40
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %28
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @SLI4_MAX_FCF_INDEX, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %69)
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %71, i64* %76, align 8
  %77 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %77, i32* %6, align 4
  br label %90

78:                                               ; preds = %57
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @SLI4_MAX_FCF_INDEX, align 8
  %84 = call i32 @ocs_log_test(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %82, i64 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %87, i64 %88
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %89, align 8
  br label %90

90:                                               ; preds = %78, %64
  br label %98

91:                                               ; preds = %21
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @SLI4_MAX_FCFI, align 8
  %97 = call i32 @ocs_log_test(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %95, i64 %96)
  br label %98

98:                                               ; preds = %91, %90
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %16
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @ocs_log_err(i32*, i8*, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, ...) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
