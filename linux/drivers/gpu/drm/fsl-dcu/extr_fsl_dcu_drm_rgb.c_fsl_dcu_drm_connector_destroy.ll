; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_rgb.c_fsl_dcu_drm_connector_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_rgb.c_fsl_dcu_drm_connector_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.fsl_dcu_drm_connector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @fsl_dcu_drm_connector_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_dcu_drm_connector_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.fsl_dcu_drm_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = call %struct.fsl_dcu_drm_connector* @to_fsl_dcu_connector(%struct.drm_connector* %4)
  store %struct.fsl_dcu_drm_connector* %5, %struct.fsl_dcu_drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = call i32 @drm_connector_unregister(%struct.drm_connector* %6)
  %8 = load %struct.fsl_dcu_drm_connector*, %struct.fsl_dcu_drm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_dcu_drm_connector, %struct.fsl_dcu_drm_connector* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @drm_panel_detach(i32 %10)
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = call i32 @drm_connector_cleanup(%struct.drm_connector* %12)
  ret void
}

declare dso_local %struct.fsl_dcu_drm_connector* @to_fsl_dcu_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_unregister(%struct.drm_connector*) #1

declare dso_local i32 @drm_panel_detach(i32) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
