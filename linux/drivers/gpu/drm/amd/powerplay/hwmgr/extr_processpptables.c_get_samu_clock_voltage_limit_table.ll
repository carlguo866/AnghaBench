; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_samu_clock_voltage_limit_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_samu_clock_voltage_limit_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.phm_samu_clock_voltage_dependency_table = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_samu_clock_voltage_dependency_table**, %struct.TYPE_7__*)* @get_samu_clock_voltage_limit_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_samu_clock_voltage_limit_table(%struct.pp_hwmgr* %0, %struct.phm_samu_clock_voltage_dependency_table** %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca %struct.phm_samu_clock_voltage_dependency_table**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.phm_samu_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store %struct.phm_samu_clock_voltage_dependency_table** %1, %struct.phm_samu_clock_voltage_dependency_table*** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 16, %14
  %16 = add i64 8, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.phm_samu_clock_voltage_dependency_table* @kzalloc(i64 %17, i32 %18)
  store %struct.phm_samu_clock_voltage_dependency_table* %19, %struct.phm_samu_clock_voltage_dependency_table** %10, align 8
  %20 = load %struct.phm_samu_clock_voltage_dependency_table*, %struct.phm_samu_clock_voltage_dependency_table** %10, align 8
  %21 = icmp eq %struct.phm_samu_clock_voltage_dependency_table* null, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %82

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.phm_samu_clock_voltage_dependency_table*, %struct.phm_samu_clock_voltage_dependency_table** %10, align 8
  %30 = getelementptr inbounds %struct.phm_samu_clock_voltage_dependency_table, %struct.phm_samu_clock_voltage_dependency_table* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %76, %25
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @le16_to_cpu(i32 %45)
  %47 = load %struct.phm_samu_clock_voltage_dependency_table*, %struct.phm_samu_clock_voltage_dependency_table** %10, align 8
  %48 = getelementptr inbounds %struct.phm_samu_clock_voltage_dependency_table, %struct.phm_samu_clock_voltage_dependency_table* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i64 %46, i64* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = shl i64 %59, 16
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @le16_to_cpu(i32 %67)
  %69 = or i64 %60, %68
  %70 = load %struct.phm_samu_clock_voltage_dependency_table*, %struct.phm_samu_clock_voltage_dependency_table** %10, align 8
  %71 = getelementptr inbounds %struct.phm_samu_clock_voltage_dependency_table, %struct.phm_samu_clock_voltage_dependency_table* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i64 %69, i64* %75, align 8
  br label %76

76:                                               ; preds = %38
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %31

79:                                               ; preds = %31
  %80 = load %struct.phm_samu_clock_voltage_dependency_table*, %struct.phm_samu_clock_voltage_dependency_table** %10, align 8
  %81 = load %struct.phm_samu_clock_voltage_dependency_table**, %struct.phm_samu_clock_voltage_dependency_table*** %6, align 8
  store %struct.phm_samu_clock_voltage_dependency_table* %80, %struct.phm_samu_clock_voltage_dependency_table** %81, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %22
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.phm_samu_clock_voltage_dependency_table* @kzalloc(i64, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
