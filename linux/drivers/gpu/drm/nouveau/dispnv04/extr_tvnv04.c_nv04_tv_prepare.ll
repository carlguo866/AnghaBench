; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv04.c_nv04_tv_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv04.c_nv04_tv_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs*, i32, %struct.drm_device* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, i32)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @nv04_tv_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_tv_prepare(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder_helper_funcs*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %6, i32 0, i32 2
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_2__* @nouveau_crtc(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %16, align 8
  store %struct.drm_encoder_helper_funcs* %17, %struct.drm_encoder_helper_funcs** %5, align 8
  %18 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %5, align 8
  %19 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %18, i32 0, i32 0
  %20 = load i32 (%struct.drm_encoder.0*, i32)*, i32 (%struct.drm_encoder.0*, i32)** %19, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = bitcast %struct.drm_encoder* %21 to %struct.drm_encoder.0*
  %23 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %24 = call i32 %20(%struct.drm_encoder.0* %22, i32 %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @nv04_dfp_disable(%struct.drm_device* %25, i32 %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = call i64 @nv_two_heads(%struct.drm_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = xor i32 %33, 1
  %35 = call i32 @nv04_tv_bind(%struct.drm_device* %32, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @nv04_tv_bind(%struct.drm_device* %37, i32 %38, i32 1)
  ret void
}

declare dso_local %struct.TYPE_2__* @nouveau_crtc(i32) #1

declare dso_local i32 @nv04_dfp_disable(%struct.drm_device*, i32) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @nv04_tv_bind(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
