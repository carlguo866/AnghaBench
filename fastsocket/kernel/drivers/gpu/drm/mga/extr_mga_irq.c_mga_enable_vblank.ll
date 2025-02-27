; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_irq.c_mga_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_irq.c_mga_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"tried to enable vblank on non-existent crtc %d\0A\00", align 1
@MGA_IEN = common dso_local global i32 0, align 4
@MGA_VLINEIEN = common dso_local global i32 0, align 4
@MGA_SOFTRAPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mga_enable_vblank(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @MGA_IEN, align 4
  %18 = load i32, i32* @MGA_VLINEIEN, align 4
  %19 = load i32, i32* @MGA_SOFTRAPEN, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @MGA_WRITE(i32 %17, i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @MGA_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
