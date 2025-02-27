; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_of_mipi_dsi_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_of_mipi_dsi_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }
%struct.mipi_dsi_host = type { i32 }
%struct.device_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mipi_dsi_device* (%struct.mipi_dsi_host*, %struct.device_node*)* @of_mipi_dsi_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mipi_dsi_device* @of_mipi_dsi_device_add(%struct.mipi_dsi_host* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.mipi_dsi_host*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %5 = load i32, i32* @ENODEV, align 4
  %6 = sub nsw i32 0, %5
  %7 = call %struct.mipi_dsi_device* @ERR_PTR(i32 %6)
  ret %struct.mipi_dsi_device* %7
}

declare dso_local %struct.mipi_dsi_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
