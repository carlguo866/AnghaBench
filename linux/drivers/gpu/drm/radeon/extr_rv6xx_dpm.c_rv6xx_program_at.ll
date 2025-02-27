; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_at.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_power_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv6xx_program_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_program_at(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv6xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %4)
  store %struct.rv6xx_power_info* %5, %struct.rv6xx_power_info** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %8 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %12, %15
  %17 = sdiv i32 %16, 200
  %18 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %19 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %25 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = sdiv i32 %27, 200
  %29 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %30 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %36 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = sdiv i32 %38, 200
  %40 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %41 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %47 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %45, %48
  %50 = sdiv i32 %49, 200
  %51 = call i32 @r600_set_at(%struct.radeon_device* %6, i32 %17, i32 %28, i32 %39, i32 %50)
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @r600_set_at(%struct.radeon_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
