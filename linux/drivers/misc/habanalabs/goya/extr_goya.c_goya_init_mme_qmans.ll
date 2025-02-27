; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_mme_qmans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_mme_qmans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.goya_device* }
%struct.goya_device = type { i32 }

@HW_CAP_MME = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i64 0, align 8
@mmSYNC_MNGR_SOB_OBJ_0 = common dso_local global i64 0, align 8
@mmMME_SM_BASE_ADDRESS_LOW = common dso_local global i32 0, align 4
@mmMME_SM_BASE_ADDRESS_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goya_init_mme_qmans(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.goya_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %6 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 0
  %8 = load %struct.goya_device*, %struct.goya_device** %7, align 8
  store %struct.goya_device* %8, %struct.goya_device** %3, align 8
  %9 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %10 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HW_CAP_MME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = load i64, i64* @CFG_BASE, align 8
  %18 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_0, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @lower_32_bits(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* @CFG_BASE, align 8
  %22 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_0, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @upper_32_bits(i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @mmMME_SM_BASE_ADDRESS_LOW, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @WREG32(i32 %25, i32 %26)
  %28 = load i32, i32* @mmMME_SM_BASE_ADDRESS_HIGH, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @WREG32(i32 %28, i32 %29)
  %31 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %32 = call i32 @goya_init_mme_qman(%struct.hl_device* %31)
  %33 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %34 = call i32 @goya_init_mme_cmdq(%struct.hl_device* %33)
  %35 = load i32, i32* @HW_CAP_MME, align 4
  %36 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %37 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @goya_init_mme_qman(%struct.hl_device*) #1

declare dso_local i32 @goya_init_mme_cmdq(%struct.hl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
