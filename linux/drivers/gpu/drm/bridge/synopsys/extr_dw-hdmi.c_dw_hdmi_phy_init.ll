; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*, i8*, %struct.drm_display_mode*)* @dw_hdmi_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_phy_init(%struct.dw_hdmi* %0, i8* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_hdmi*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %15 = call i32 @dw_hdmi_phy_sel_data_en_pol(%struct.dw_hdmi* %14, i32 1)
  %16 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %17 = call i32 @dw_hdmi_phy_sel_interface_control(%struct.dw_hdmi* %16, i32 0)
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %19 = call i32 @hdmi_phy_configure(%struct.dw_hdmi* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @dw_hdmi_phy_sel_data_en_pol(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dw_hdmi_phy_sel_interface_control(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @hdmi_phy_configure(%struct.dw_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
