; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawLowerRight.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawLowerRight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ICON_SIZE = common dso_local global float 0.000000e+00, align 4
@cgs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@cg_drawTeamOverlay = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@TINYCHAR_HEIGHT = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawLowerRight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawLowerRight() #0 {
  %1 = alloca float, align 4
  %2 = load float, float* @ICON_SIZE, align 4
  %3 = fsub float 4.800000e+02, %2
  store float %3, float* %1, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cgs, i32 0, i32 0), align 8
  %5 = load i64, i64* @GT_TEAM, align 8
  %6 = icmp sge i64 %4, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg_drawTeamOverlay, i32 0, i32 0), align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load float, float* %1, align 4
  %12 = load i32, i32* @qtrue, align 4
  %13 = load i32, i32* @qfalse, align 4
  %14 = call float @CG_DrawTeamOverlay(float %11, i32 %12, i32 %13)
  store float %14, float* %1, align 4
  br label %19

15:                                               ; preds = %7
  %16 = load float, float* @TINYCHAR_HEIGHT, align 4
  %17 = load float, float* %1, align 4
  %18 = fsub float %17, %16
  store float %18, float* %1, align 4
  br label %19

19:                                               ; preds = %15, %10
  br label %20

20:                                               ; preds = %19, %0
  %21 = load float, float* %1, align 4
  %22 = call float @CG_DrawScores(float %21)
  store float %22, float* %1, align 4
  %23 = load float, float* %1, align 4
  %24 = call i32 @CG_DrawPowerups(float %23)
  ret void
}

declare dso_local float @CG_DrawTeamOverlay(float, i32, i32) #1

declare dso_local float @CG_DrawScores(float) #1

declare dso_local i32 @CG_DrawPowerups(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
