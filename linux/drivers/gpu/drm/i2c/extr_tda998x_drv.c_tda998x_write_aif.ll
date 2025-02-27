; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_write_aif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_write_aif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32 }
%struct.hdmi_audio_infoframe = type { i32 }
%union.hdmi_infoframe = type { %struct.hdmi_audio_infoframe }

@DIP_IF_FLAGS_IF4 = common dso_local global i32 0, align 4
@REG_IF4_HB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*, %struct.hdmi_audio_infoframe*)* @tda998x_write_aif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_write_aif(%struct.tda998x_priv* %0, %struct.hdmi_audio_infoframe* %1) #0 {
  %3 = alloca %struct.tda998x_priv*, align 8
  %4 = alloca %struct.hdmi_audio_infoframe*, align 8
  %5 = alloca %union.hdmi_infoframe, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %3, align 8
  store %struct.hdmi_audio_infoframe* %1, %struct.hdmi_audio_infoframe** %4, align 8
  %6 = bitcast %union.hdmi_infoframe* %5 to %struct.hdmi_audio_infoframe*
  %7 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %8 = bitcast %struct.hdmi_audio_infoframe* %6 to i8*
  %9 = bitcast %struct.hdmi_audio_infoframe* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 4, i1 false)
  %10 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %11 = load i32, i32* @DIP_IF_FLAGS_IF4, align 4
  %12 = load i32, i32* @REG_IF4_HB0, align 4
  %13 = call i32 @tda998x_write_if(%struct.tda998x_priv* %10, i32 %11, i32 %12, %union.hdmi_infoframe* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tda998x_write_if(%struct.tda998x_priv*, i32, i32, %union.hdmi_infoframe*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
