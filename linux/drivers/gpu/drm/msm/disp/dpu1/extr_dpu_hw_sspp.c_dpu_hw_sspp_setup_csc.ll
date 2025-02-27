; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dpu_csc_cfg = type { i32 }

@DPU_SSPP_CSC = common dso_local global i32 0, align 4
@DPU_SSPP_CSC_10BIT = common dso_local global i32 0, align 4
@CSC_10BIT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, %struct.dpu_csc_cfg*)* @dpu_hw_sspp_setup_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_sspp_setup_csc(%struct.dpu_hw_pipe* %0, %struct.dpu_csc_cfg* %1) #0 {
  %3 = alloca %struct.dpu_hw_pipe*, align 8
  %4 = alloca %struct.dpu_csc_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %3, align 8
  store %struct.dpu_csc_cfg* %1, %struct.dpu_csc_cfg** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %8 = load i32, i32* @DPU_SSPP_CSC, align 4
  %9 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %7, i32 %8, i32* %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %4, align 8
  %13 = icmp ne %struct.dpu_csc_cfg* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %2
  br label %36

15:                                               ; preds = %11
  %16 = load i32, i32* @DPU_SSPP_CSC_10BIT, align 4
  %17 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %16, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i64, i64* @CSC_10BIT_OFFSET, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %23, %15
  %30 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %31 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dpu_hw_csc_setup(i32* %31, i32 %32, %struct.dpu_csc_cfg* %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %14
  ret void
}

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dpu_hw_csc_setup(i32*, i32, %struct.dpu_csc_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
