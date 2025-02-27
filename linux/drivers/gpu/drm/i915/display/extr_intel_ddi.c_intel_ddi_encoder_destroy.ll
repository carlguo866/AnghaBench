; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_encoder_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_encoder_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.intel_digital_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @intel_ddi_encoder_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_encoder_destroy(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.intel_digital_port*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder* %4)
  store %struct.intel_digital_port* %5, %struct.intel_digital_port** %3, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call i32 @intel_dp_encoder_flush_work(%struct.drm_encoder* %6)
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %8)
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %11 = call i32 @kfree(%struct.intel_digital_port* %10)
  ret void
}

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder*) #1

declare dso_local i32 @intel_dp_encoder_flush_work(%struct.drm_encoder*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @kfree(%struct.intel_digital_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
