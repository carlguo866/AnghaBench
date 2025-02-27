; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_set_dp_phy_pattern_passthrough_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_set_dp_phy_pattern_passthrough_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_link_encoder = type { i32 }

@DP_LINK_FRAMING_CNTL = common dso_local global i32 0, align 4
@DP_IDLE_BS_INTERVAL = common dso_local global i32 0, align 4
@DP_VBID_DISABLE = common dso_local global i32 0, align 4
@DP_VID_ENHANCED_FRAME_MODE = common dso_local global i32 0, align 4
@DP_DPHY_SCRAM_CNTL = common dso_local global i32 0, align 4
@DPHY_SCRAMBLER_BS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_link_encoder*, i32)* @set_dp_phy_pattern_passthrough_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dp_phy_pattern_passthrough_mode(%struct.dce110_link_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.dce110_link_encoder*, align 8
  %4 = alloca i32, align 4
  store %struct.dce110_link_encoder* %0, %struct.dce110_link_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @setup_panel_mode(%struct.dce110_link_encoder* %5, i32 %6)
  %8 = load i32, i32* @DP_LINK_FRAMING_CNTL, align 4
  %9 = load i32, i32* @DP_IDLE_BS_INTERVAL, align 4
  %10 = load i32, i32* @DP_VBID_DISABLE, align 4
  %11 = load i32, i32* @DP_VID_ENHANCED_FRAME_MODE, align 4
  %12 = call i32 @REG_UPDATE_3(i32 %8, i32 %9, i32 8192, i32 %10, i32 0, i32 %11, i32 1)
  %13 = load i32, i32* @DP_DPHY_SCRAM_CNTL, align 4
  %14 = load i32, i32* @DPHY_SCRAMBLER_BS_COUNT, align 4
  %15 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 511)
  %16 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %3, align 8
  %17 = call i32 @set_link_training_complete(%struct.dce110_link_encoder* %16, i32 1)
  %18 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %3, align 8
  %19 = call i32 @enable_phy_bypass_mode(%struct.dce110_link_encoder* %18, i32 0)
  %20 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %3, align 8
  %21 = call i32 @disable_prbs_mode(%struct.dce110_link_encoder* %20)
  ret void
}

declare dso_local i32 @setup_panel_mode(%struct.dce110_link_encoder*, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @set_link_training_complete(%struct.dce110_link_encoder*, i32) #1

declare dso_local i32 @enable_phy_bypass_mode(%struct.dce110_link_encoder*, i32) #1

declare dso_local i32 @disable_prbs_mode(%struct.dce110_link_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
