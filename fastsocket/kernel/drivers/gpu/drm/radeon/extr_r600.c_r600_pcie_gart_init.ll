; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_pcie_gart_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_pcie_gart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"R600 PCIE GART already initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_pcie_gart_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @radeon_gart_init(%struct.radeon_device* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %30

19:                                               ; preds = %12
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = call i32 @radeon_gart_table_vram_alloc(%struct.radeon_device* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %19, %17, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @radeon_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gart_table_vram_alloc(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
