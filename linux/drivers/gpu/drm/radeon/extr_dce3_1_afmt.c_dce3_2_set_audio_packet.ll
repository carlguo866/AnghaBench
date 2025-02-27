; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce3_1_afmt.c_dce3_2_set_audio_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce3_1_afmt.c_dce3_2_set_audio_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@HDMI0_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_SAMPLE_SEND = common dso_local global i32 0, align 4
@AFMT_60958_CS_UPDATE = common dso_local global i32 0, align 4
@HDMI0_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@HDMI0_AUDIO_INFO_SEND = common dso_local global i32 0, align 4
@HDMI0_AUDIO_INFO_CONT = common dso_local global i32 0, align 4
@HDMI0_INFOFRAME_CONTROL1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce3_2_set_audio_packet(%struct.drm_encoder* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %6, align 8
  %13 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @HDMI0_AUDIO_DELAY_EN(i32 1)
  %17 = call i32 @HDMI0_AUDIO_PACKETS_PER_LINE(i32 3)
  %18 = or i32 %16, %17
  %19 = call i32 @WREG32(i64 %15, i32 %18)
  %20 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @AFMT_AUDIO_SAMPLE_SEND, align 4
  %24 = load i32, i32* @AFMT_60958_CS_UPDATE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @WREG32(i64 %22, i32 %25)
  %27 = load i64, i64* @HDMI0_INFOFRAME_CONTROL0, align 8
  %28 = load i64, i64* %4, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @HDMI0_AUDIO_INFO_SEND, align 4
  %31 = load i32, i32* @HDMI0_AUDIO_INFO_CONT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @WREG32_OR(i64 %29, i32 %32)
  %34 = load i64, i64* @HDMI0_INFOFRAME_CONTROL1, align 8
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @HDMI0_AUDIO_INFO_LINE(i32 2)
  %38 = call i32 @WREG32_OR(i64 %36, i32 %37)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @HDMI0_AUDIO_DELAY_EN(i32) #1

declare dso_local i32 @HDMI0_AUDIO_PACKETS_PER_LINE(i32) #1

declare dso_local i32 @WREG32_OR(i64, i32) #1

declare dso_local i32 @HDMI0_AUDIO_INFO_LINE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
