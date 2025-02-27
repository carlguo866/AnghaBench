; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dce_calcs.c_bw_calcs_version_from_asic_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dce_calcs.c_bw_calcs_version_from_asic_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_asic_id = type { i32, i32 }

@BW_CALCS_VERSION_STONEY = common dso_local global i32 0, align 4
@BW_CALCS_VERSION_CARRIZO = common dso_local global i32 0, align 4
@BW_CALCS_VERSION_POLARIS12 = common dso_local global i32 0, align 4
@BW_CALCS_VERSION_POLARIS10 = common dso_local global i32 0, align 4
@BW_CALCS_VERSION_POLARIS11 = common dso_local global i32 0, align 4
@BW_CALCS_VERSION_VEGAM = common dso_local global i32 0, align 4
@BW_CALCS_VERSION_INVALID = common dso_local global i32 0, align 4
@BW_CALCS_VERSION_VEGA10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @bw_calcs_version_from_asic_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bw_calcs_version_from_asic_id(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hw_asic_id, align 4
  %4 = bitcast %struct.hw_asic_id* %3 to i64*
  store i64 %0, i64* %4, align 4
  %5 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %48 [
    i32 129, label %7
    i32 128, label %16
    i32 130, label %46
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ASIC_REV_IS_STONEY(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @BW_CALCS_VERSION_STONEY, align 4
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %7
  %15 = load i32, i32* @BW_CALCS_VERSION_CARRIZO, align 4
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ASIC_REV_IS_POLARIS12_V(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @BW_CALCS_VERSION_POLARIS12, align 4
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ASIC_REV_IS_POLARIS10_P(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @BW_CALCS_VERSION_POLARIS10, align 4
  store i32 %29, i32* %2, align 4
  br label %50

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ASIC_REV_IS_POLARIS11_M(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @BW_CALCS_VERSION_POLARIS11, align 4
  store i32 %36, i32* %2, align 4
  br label %50

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %3, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ASIC_REV_IS_VEGAM(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @BW_CALCS_VERSION_VEGAM, align 4
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @BW_CALCS_VERSION_INVALID, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %1
  %47 = load i32, i32* @BW_CALCS_VERSION_VEGA10, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %1
  %49 = load i32, i32* @BW_CALCS_VERSION_INVALID, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %46, %44, %42, %35, %28, %21, %14, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ASIC_REV_IS_STONEY(i32) #1

declare dso_local i32 @ASIC_REV_IS_POLARIS12_V(i32) #1

declare dso_local i32 @ASIC_REV_IS_POLARIS10_P(i32) #1

declare dso_local i32 @ASIC_REV_IS_POLARIS11_M(i32) #1

declare dso_local i32 @ASIC_REV_IS_VEGAM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
