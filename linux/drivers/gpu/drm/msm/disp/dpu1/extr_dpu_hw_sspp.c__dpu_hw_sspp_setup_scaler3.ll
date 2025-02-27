; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c__dpu_hw_sspp_setup_scaler3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c__dpu_hw_sspp_setup_scaler3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dpu_hw_pipe_cfg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.dpu_hw_pixel_ext = type { i32 }
%struct.dpu_hw_scaler3_cfg = type { i32 }

@DPU_SSPP_SCALER_QSEED3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pixel_ext*, i8*)* @_dpu_hw_sspp_setup_scaler3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_hw_sspp_setup_scaler3(%struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe_cfg* %1, %struct.dpu_hw_pixel_ext* %2, i8* %3) #0 {
  %5 = alloca %struct.dpu_hw_pipe*, align 8
  %6 = alloca %struct.dpu_hw_pipe_cfg*, align 8
  %7 = alloca %struct.dpu_hw_pixel_ext*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpu_hw_scaler3_cfg*, align 8
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %5, align 8
  store %struct.dpu_hw_pipe_cfg* %1, %struct.dpu_hw_pipe_cfg** %6, align 8
  store %struct.dpu_hw_pixel_ext* %2, %struct.dpu_hw_pixel_ext** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.dpu_hw_scaler3_cfg*
  store %struct.dpu_hw_scaler3_cfg* %12, %struct.dpu_hw_scaler3_cfg** %10, align 8
  %13 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %7, align 8
  %14 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %15 = load i32, i32* @DPU_SSPP_SCALER_QSEED3, align 4
  %16 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %14, i32 %15, i32* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %4
  %19 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %6, align 8
  %20 = icmp ne %struct.dpu_hw_pipe_cfg* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %10, align 8
  %23 = icmp ne %struct.dpu_hw_scaler3_cfg* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %26 = icmp ne %struct.dpu_hw_pipe* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %29 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %34 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32, %27, %24, %21, %18, %4
  br label %58

40:                                               ; preds = %32
  %41 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %42 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %41, i32 0, i32 1
  %43 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %46 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %6, align 8
  %54 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dpu_hw_setup_scaler3(i32* %42, %struct.dpu_hw_scaler3_cfg* %43, i32 %44, i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %40, %39
  ret void
}

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i32*) #1

declare dso_local i32 @dpu_hw_setup_scaler3(i32*, %struct.dpu_hw_scaler3_cfg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
