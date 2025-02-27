; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_enc_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_enc_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_dp_mst_encoder = type { %struct.intel_digital_port* }
%struct.intel_digital_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_dp_mst_enc_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_mst_enc_get_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_dp_mst_encoder*, align 8
  %6 = alloca %struct.intel_digital_port*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %7 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %7, i32 0, i32 0
  %9 = call %struct.intel_dp_mst_encoder* @enc_to_mst(i32* %8)
  store %struct.intel_dp_mst_encoder* %9, %struct.intel_dp_mst_encoder** %5, align 8
  %10 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %5, align 8
  %11 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %10, i32 0, i32 0
  %12 = load %struct.intel_digital_port*, %struct.intel_digital_port** %11, align 8
  store %struct.intel_digital_port* %12, %struct.intel_digital_port** %6, align 8
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 0
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %16 = call i32 @intel_ddi_get_config(i32* %14, %struct.intel_crtc_state* %15)
  ret void
}

declare dso_local %struct.intel_dp_mst_encoder* @enc_to_mst(i32*) #1

declare dso_local i32 @intel_ddi_get_config(i32*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
