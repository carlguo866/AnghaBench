; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_shadow_add_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_shadow_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%union.ecore_llh_filter = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_LLH_INVALID_FILTER_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Failed to find an empty LLH filter to utilize [ppfid %d]\0A\00", align 1
@ECORE_NORESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_dev*, i64, i32, %union.ecore_llh_filter*, i64*, i32*)* @ecore_llh_shadow_add_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_llh_shadow_add_filter(%struct.ecore_dev* %0, i64 %1, i32 %2, %union.ecore_llh_filter* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.ecore_llh_filter*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store %union.ecore_llh_filter* %3, %union.ecore_llh_filter** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %union.ecore_llh_filter*, %union.ecore_llh_filter** %11, align 8
  %18 = load i64*, i64** %12, align 8
  %19 = call i32 @ecore_llh_shadow_search_filter(%struct.ecore_dev* %15, i64 %16, %union.ecore_llh_filter* %17, i64* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @ECORE_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %7, align 4
  br label %60

25:                                               ; preds = %6
  %26 = load i64*, i64** %12, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ECORE_LLH_INVALID_FILTER_IDX, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64*, i64** %12, align 8
  %34 = call i32 @ecore_llh_shadow_get_free_idx(%struct.ecore_dev* %31, i64 %32, i64* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @ECORE_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %7, align 4
  br label %60

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i64*, i64** %12, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ECORE_LLH_INVALID_FILTER_IDX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @DP_NOTICE(%struct.ecore_dev* %47, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @ECORE_NORESOURCES, align 4
  store i32 %50, i32* %7, align 4
  br label %60

51:                                               ; preds = %41
  %52 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64*, i64** %12, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %union.ecore_llh_filter*, %union.ecore_llh_filter** %11, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @__ecore_llh_shadow_add_filter(%struct.ecore_dev* %52, i64 %53, i64 %55, i32 %56, %union.ecore_llh_filter* %57, i32* %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %51, %46, %38, %23
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @ecore_llh_shadow_search_filter(%struct.ecore_dev*, i64, %union.ecore_llh_filter*, i64*) #1

declare dso_local i32 @ecore_llh_shadow_get_free_idx(%struct.ecore_dev*, i64, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i64) #1

declare dso_local i32 @__ecore_llh_shadow_add_filter(%struct.ecore_dev*, i64, i64, i32, %union.ecore_llh_filter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
