; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.mtk_dsi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @mtk_dsi_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dsi_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.mtk_dsi*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.mtk_dsi* @encoder_to_dsi(%struct.drm_encoder* %4)
  store %struct.mtk_dsi* %5, %struct.mtk_dsi** %3, align 8
  %6 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %7 = call i32 @mtk_output_dsi_disable(%struct.mtk_dsi* %6)
  ret void
}

declare dso_local %struct.mtk_dsi* @encoder_to_dsi(%struct.drm_encoder*) #1

declare dso_local i32 @mtk_output_dsi_disable(%struct.mtk_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
