; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_asic_get_baco_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_asic_get_baco_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amd_pm_funcs*, i8* }
%struct.amd_pm_funcs = type { i32 (i8*, i32*)* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32*)* @soc15_asic_get_baco_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc15_asic_get_baco_capability(%struct.amdgpu_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.amd_pm_funcs*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %14, align 8
  store %struct.amd_pm_funcs* %15, %struct.amd_pm_funcs** %7, align 8
  %16 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %7, align 8
  %17 = icmp ne %struct.amd_pm_funcs* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %7, align 8
  %20 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %19, i32 0, i32 0
  %21 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %20, align 8
  %22 = icmp ne i32 (i8*, i32*)* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18, %2
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %18
  %28 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %7, align 8
  %29 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %28, i32 0, i32 0
  %30 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 %30(i8* %31, i32* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
