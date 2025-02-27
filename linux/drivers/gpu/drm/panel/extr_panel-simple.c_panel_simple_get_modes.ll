; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.panel_simple = type { i64 }
%struct.edid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @panel_simple_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_simple_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.panel_simple*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.edid*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %7 = call %struct.panel_simple* @to_panel_simple(%struct.drm_panel* %6)
  store %struct.panel_simple* %7, %struct.panel_simple** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %9 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  %13 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %14 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %17 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.edid* @drm_get_edid(i32 %15, i64 %18)
  store %struct.edid* %19, %struct.edid** %5, align 8
  %20 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %21 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.edid*, %struct.edid** %5, align 8
  %24 = call i32 @drm_connector_update_edid_property(i32 %22, %struct.edid* %23)
  %25 = load %struct.edid*, %struct.edid** %5, align 8
  %26 = icmp ne %struct.edid* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %12
  %28 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %29 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.edid*, %struct.edid** %5, align 8
  %32 = call i64 @drm_add_edid_modes(i32 %30, %struct.edid* %31)
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load %struct.edid*, %struct.edid** %5, align 8
  %38 = call i32 @kfree(%struct.edid* %37)
  br label %39

39:                                               ; preds = %27, %12
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %42 = call i64 @panel_simple_get_non_edid_modes(%struct.panel_simple* %41)
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.panel_simple* @to_panel_simple(%struct.drm_panel*) #1

declare dso_local %struct.edid* @drm_get_edid(i32, i64) #1

declare dso_local i32 @drm_connector_update_edid_property(i32, %struct.edid*) #1

declare dso_local i64 @drm_add_edid_modes(i32, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i64 @panel_simple_get_non_edid_modes(%struct.panel_simple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
