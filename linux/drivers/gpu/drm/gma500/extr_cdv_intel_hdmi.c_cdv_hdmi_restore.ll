; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_hdmi.c_cdv_hdmi_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_hdmi.c_cdv_hdmi_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.gma_encoder = type { %struct.mid_intel_hdmi_priv* }
%struct.mid_intel_hdmi_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @cdv_hdmi_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_hdmi_restore(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.gma_encoder*, align 8
  %5 = alloca %struct.mid_intel_hdmi_priv*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %9)
  store %struct.gma_encoder* %10, %struct.gma_encoder** %4, align 8
  %11 = load %struct.gma_encoder*, %struct.gma_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %11, i32 0, i32 0
  %13 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %12, align 8
  store %struct.mid_intel_hdmi_priv* %13, %struct.mid_intel_hdmi_priv** %5, align 8
  %14 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @REG_WRITE(i32 %16, i32 %19)
  %21 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %5, align 8
  %22 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @REG_READ(i32 %23)
  ret void
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
