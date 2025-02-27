; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_min_set_viewport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_min_set_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.dcn10_hubp = type { i32 }

@DCSURF_PRI_VIEWPORT_DIMENSION = common dso_local global i32 0, align 4
@PRI_VIEWPORT_WIDTH = common dso_local global i32 0, align 4
@PRI_VIEWPORT_HEIGHT = common dso_local global i32 0, align 4
@DCSURF_PRI_VIEWPORT_START = common dso_local global i32 0, align 4
@PRI_VIEWPORT_X_START = common dso_local global i32 0, align 4
@PRI_VIEWPORT_Y_START = common dso_local global i32 0, align 4
@DCSURF_SEC_VIEWPORT_DIMENSION = common dso_local global i32 0, align 4
@SEC_VIEWPORT_WIDTH = common dso_local global i32 0, align 4
@SEC_VIEWPORT_HEIGHT = common dso_local global i32 0, align 4
@DCSURF_SEC_VIEWPORT_START = common dso_local global i32 0, align 4
@SEC_VIEWPORT_X_START = common dso_local global i32 0, align 4
@SEC_VIEWPORT_Y_START = common dso_local global i32 0, align 4
@DCSURF_PRI_VIEWPORT_DIMENSION_C = common dso_local global i32 0, align 4
@PRI_VIEWPORT_WIDTH_C = common dso_local global i32 0, align 4
@PRI_VIEWPORT_HEIGHT_C = common dso_local global i32 0, align 4
@DCSURF_PRI_VIEWPORT_START_C = common dso_local global i32 0, align 4
@PRI_VIEWPORT_X_START_C = common dso_local global i32 0, align 4
@PRI_VIEWPORT_Y_START_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @min_set_viewport(%struct.hubp* %0, %struct.rect* %1, %struct.rect* %2) #0 {
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca %struct.rect*, align 8
  %6 = alloca %struct.rect*, align 8
  %7 = alloca %struct.dcn10_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %4, align 8
  store %struct.rect* %1, %struct.rect** %5, align 8
  store %struct.rect* %2, %struct.rect** %6, align 8
  %8 = load %struct.hubp*, %struct.hubp** %4, align 8
  %9 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %8)
  store %struct.dcn10_hubp* %9, %struct.dcn10_hubp** %7, align 8
  %10 = load i32, i32* @DCSURF_PRI_VIEWPORT_DIMENSION, align 4
  %11 = load i32, i32* @PRI_VIEWPORT_WIDTH, align 4
  %12 = load %struct.rect*, %struct.rect** %5, align 8
  %13 = getelementptr inbounds %struct.rect, %struct.rect* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PRI_VIEWPORT_HEIGHT, align 4
  %16 = load %struct.rect*, %struct.rect** %5, align 8
  %17 = getelementptr inbounds %struct.rect, %struct.rect* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @REG_SET_2(i32 %10, i32 0, i32 %11, i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* @DCSURF_PRI_VIEWPORT_START, align 4
  %21 = load i32, i32* @PRI_VIEWPORT_X_START, align 4
  %22 = load %struct.rect*, %struct.rect** %5, align 8
  %23 = getelementptr inbounds %struct.rect, %struct.rect* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PRI_VIEWPORT_Y_START, align 4
  %26 = load %struct.rect*, %struct.rect** %5, align 8
  %27 = getelementptr inbounds %struct.rect, %struct.rect* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @REG_SET_2(i32 %20, i32 0, i32 %21, i32 %24, i32 %25, i32 %28)
  %30 = load i32, i32* @DCSURF_SEC_VIEWPORT_DIMENSION, align 4
  %31 = load i32, i32* @SEC_VIEWPORT_WIDTH, align 4
  %32 = load %struct.rect*, %struct.rect** %5, align 8
  %33 = getelementptr inbounds %struct.rect, %struct.rect* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SEC_VIEWPORT_HEIGHT, align 4
  %36 = load %struct.rect*, %struct.rect** %5, align 8
  %37 = getelementptr inbounds %struct.rect, %struct.rect* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @REG_SET_2(i32 %30, i32 0, i32 %31, i32 %34, i32 %35, i32 %38)
  %40 = load i32, i32* @DCSURF_SEC_VIEWPORT_START, align 4
  %41 = load i32, i32* @SEC_VIEWPORT_X_START, align 4
  %42 = load %struct.rect*, %struct.rect** %5, align 8
  %43 = getelementptr inbounds %struct.rect, %struct.rect* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SEC_VIEWPORT_Y_START, align 4
  %46 = load %struct.rect*, %struct.rect** %5, align 8
  %47 = getelementptr inbounds %struct.rect, %struct.rect* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @REG_SET_2(i32 %40, i32 0, i32 %41, i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* @DCSURF_PRI_VIEWPORT_DIMENSION_C, align 4
  %51 = load i32, i32* @PRI_VIEWPORT_WIDTH_C, align 4
  %52 = load %struct.rect*, %struct.rect** %6, align 8
  %53 = getelementptr inbounds %struct.rect, %struct.rect* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PRI_VIEWPORT_HEIGHT_C, align 4
  %56 = load %struct.rect*, %struct.rect** %6, align 8
  %57 = getelementptr inbounds %struct.rect, %struct.rect* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @REG_SET_2(i32 %50, i32 0, i32 %51, i32 %54, i32 %55, i32 %58)
  %60 = load i32, i32* @DCSURF_PRI_VIEWPORT_START_C, align 4
  %61 = load i32, i32* @PRI_VIEWPORT_X_START_C, align 4
  %62 = load %struct.rect*, %struct.rect** %6, align 8
  %63 = getelementptr inbounds %struct.rect, %struct.rect* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PRI_VIEWPORT_Y_START_C, align 4
  %66 = load %struct.rect*, %struct.rect** %6, align 8
  %67 = getelementptr inbounds %struct.rect, %struct.rect* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @REG_SET_2(i32 %60, i32 0, i32 %61, i32 %64, i32 %65, i32 %68)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
