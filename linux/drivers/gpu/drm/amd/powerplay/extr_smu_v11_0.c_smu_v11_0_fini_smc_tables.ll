; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_fini_smc_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_fini_smc_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i64, i64, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_fini_smc_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_fini_smc_tables(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_table_context*, align 8
  %5 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %6 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %7 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %6, i32 0, i32 0
  store %struct.smu_table_context* %7, %struct.smu_table_context** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %9 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %14 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %12
  %21 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %22 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %26 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %30 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %32 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %34 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %36 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %38 = call i32 @smu_v11_0_fini_dpm_context(%struct.smu_context* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %20
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @smu_v11_0_fini_dpm_context(%struct.smu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
