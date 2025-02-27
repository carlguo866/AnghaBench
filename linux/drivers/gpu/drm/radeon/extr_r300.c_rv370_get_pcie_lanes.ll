; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_rv370_get_pcie_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_rv370_get_pcie_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_RD_MASK = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_RD_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv370_get_pcie_lanes(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RADEON_IS_IGP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RADEON_IS_PCIE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %35

20:                                               ; preds = %12
  %21 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %22 = call i32 @RREG32_PCIE(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_RD_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_RD_SHIFT, align 4
  %27 = ashr i32 %25, %26
  switch i32 %27, label %34 [
    i32 133, label %28
    i32 132, label %29
    i32 130, label %30
    i32 129, label %31
    i32 128, label %32
    i32 131, label %33
  ]

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %35

29:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %35

30:                                               ; preds = %20
  store i32 2, i32* %2, align 4
  br label %35

31:                                               ; preds = %20
  store i32 4, i32* %2, align 4
  br label %35

32:                                               ; preds = %20
  store i32 8, i32* %2, align 4
  br label %35

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %20, %33
  store i32 16, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %32, %31, %30, %29, %28, %19, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @RREG32_PCIE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
