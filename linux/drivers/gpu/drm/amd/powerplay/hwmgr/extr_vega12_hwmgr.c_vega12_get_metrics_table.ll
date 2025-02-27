; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_get_metrics_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_get_metrics_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.vega12_hwmgr = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@TABLE_SMU_METRICS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to export SMU metrics table!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32*)* @vega12_get_metrics_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_get_metrics_table(%struct.pp_hwmgr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vega12_hwmgr*, align 8
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.vega12_hwmgr*
  store %struct.vega12_hwmgr* %11, %struct.vega12_hwmgr** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %6, align 8
  %13 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %6, align 8
  %19 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i64 @time_after(i64 %17, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %16, %2
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @TABLE_SMU_METRICS, align 4
  %31 = call i32 @smum_smc_table_manager(%struct.pp_hwmgr* %28, i32* %29, i32 %30, i32 1)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %27
  %38 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %6, align 8
  %39 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %38, i32 0, i32 0
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @memcpy(i32* %39, i32* %40, i32 4)
  %42 = load i64, i64* @jiffies, align 8
  %43 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %6, align 8
  %44 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %50

45:                                               ; preds = %16
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %6, align 8
  %48 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %47, i32 0, i32 0
  %49 = call i32 @memcpy(i32* %46, i32* %48, i32 4)
  br label %50

50:                                               ; preds = %45, %37
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %34
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @smum_smc_table_manager(%struct.pp_hwmgr*, i32*, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
