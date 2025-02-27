; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_hpd_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_hpd_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_FP_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_FP_DETECT_SENSE = common dso_local global i32 0, align 4
@RADEON_FP2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_FP2_DETECT_SENSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_hpd_sense(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %23 [
    i32 129, label %7
    i32 128, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @RADEON_FP_GEN_CNTL, align 4
  %9 = call i32 @RREG32(i32 %8)
  %10 = load i32, i32* @RADEON_FP_DETECT_SENSE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 1, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %7
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %17 = call i32 @RREG32(i32 %16)
  %18 = load i32, i32* @RADEON_FP2_DETECT_SENSE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %15
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %22, %14
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
