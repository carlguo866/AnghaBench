; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls037v7dw01.c_ls037v7dw01_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls037v7dw01.c_ls037v7dw01_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.ls037v7dw01_panel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @ls037v7dw01_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls037v7dw01_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.ls037v7dw01_panel*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %4 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %5 = call %struct.ls037v7dw01_panel* @to_ls037v7dw01_device(%struct.drm_panel* %4)
  store %struct.ls037v7dw01_panel* %5, %struct.ls037v7dw01_panel** %3, align 8
  %6 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %3, align 8
  %7 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @regulator_disable(i32 %8)
  ret i32 0
}

declare dso_local %struct.ls037v7dw01_panel* @to_ls037v7dw01_device(%struct.drm_panel*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
