; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_init_handler_common_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_init_handler_common_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_dm_irq_handler_data = type { void (i8*)*, %struct.amdgpu_display_manager*, i8* }
%struct.amdgpu_display_manager = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_dm_irq_handler_data*, void (i8*)*, i8*, %struct.amdgpu_display_manager*)* @init_handler_common_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_handler_common_data(%struct.amdgpu_dm_irq_handler_data* %0, void (i8*)* %1, i8* %2, %struct.amdgpu_display_manager* %3) #0 {
  %5 = alloca %struct.amdgpu_dm_irq_handler_data*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.amdgpu_display_manager*, align 8
  store %struct.amdgpu_dm_irq_handler_data* %0, %struct.amdgpu_dm_irq_handler_data** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.amdgpu_display_manager* %3, %struct.amdgpu_display_manager** %8, align 8
  %9 = load void (i8*)*, void (i8*)** %6, align 8
  %10 = load %struct.amdgpu_dm_irq_handler_data*, %struct.amdgpu_dm_irq_handler_data** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, %struct.amdgpu_dm_irq_handler_data* %10, i32 0, i32 0
  store void (i8*)* %9, void (i8*)** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.amdgpu_dm_irq_handler_data*, %struct.amdgpu_dm_irq_handler_data** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, %struct.amdgpu_dm_irq_handler_data* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %8, align 8
  %16 = load %struct.amdgpu_dm_irq_handler_data*, %struct.amdgpu_dm_irq_handler_data** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, %struct.amdgpu_dm_irq_handler_data* %16, i32 0, i32 1
  store %struct.amdgpu_display_manager* %15, %struct.amdgpu_display_manager** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
