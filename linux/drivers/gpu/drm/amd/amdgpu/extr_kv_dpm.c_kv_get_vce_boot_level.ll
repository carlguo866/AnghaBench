; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_get_vce_boot_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_get_vce_boot_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.amdgpu_vce_clock_voltage_dependency_table }
%struct.amdgpu_vce_clock_voltage_dependency_table = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.amdgpu_device*, i64)* @kv_get_vce_boot_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kv_get_vce_boot_level(%struct.amdgpu_device* %0, i64 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_vce_clock_voltage_dependency_table*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.amdgpu_vce_clock_voltage_dependency_table* %11, %struct.amdgpu_vce_clock_voltage_dependency_table** %6, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %33

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %12

33:                                               ; preds = %28, %12
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
