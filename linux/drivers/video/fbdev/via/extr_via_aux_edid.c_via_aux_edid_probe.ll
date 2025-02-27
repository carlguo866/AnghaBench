; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_aux_edid.c_via_aux_edid_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_aux_edid.c_via_aux_edid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_aux_bus = type { i32 }
%struct.via_aux_drv = type { i32, i32, i32, i32, %struct.via_aux_bus* }

@get_preferred_mode = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @via_aux_edid_probe(%struct.via_aux_bus* %0) #0 {
  %2 = alloca %struct.via_aux_bus*, align 8
  %3 = alloca %struct.via_aux_drv, align 8
  store %struct.via_aux_bus* %0, %struct.via_aux_bus** %2, align 8
  %4 = getelementptr inbounds %struct.via_aux_drv, %struct.via_aux_drv* %3, i32 0, i32 0
  store i32 80, i32* %4, align 8
  %5 = getelementptr inbounds %struct.via_aux_drv, %struct.via_aux_drv* %3, i32 0, i32 1
  %6 = load i32, i32* @get_preferred_mode, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.via_aux_drv, %struct.via_aux_drv* %3, i32 0, i32 2
  %8 = load i32, i32* @cleanup, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.via_aux_drv, %struct.via_aux_drv* %3, i32 0, i32 3
  %10 = load i32, i32* @name, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.via_aux_drv, %struct.via_aux_drv* %3, i32 0, i32 4
  %12 = load %struct.via_aux_bus*, %struct.via_aux_bus** %2, align 8
  store %struct.via_aux_bus* %12, %struct.via_aux_bus** %11, align 8
  %13 = call i32 @query_edid(%struct.via_aux_drv* %3)
  %14 = call i32 @via_aux_add(%struct.via_aux_drv* %3)
  ret void
}

declare dso_local i32 @query_edid(%struct.via_aux_drv*) #1

declare dso_local i32 @via_aux_add(%struct.via_aux_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
