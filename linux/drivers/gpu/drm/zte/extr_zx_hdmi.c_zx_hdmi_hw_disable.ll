; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_hw_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_hw_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_hdmi = type { i32 }

@INTR1_MASK = common dso_local global i32 0, align 4
@INTR1_MONITOR_DETECT = common dso_local global i32 0, align 4
@P2T_CTRL = common dso_local global i32 0, align 4
@P2T_DC_PKT_EN = common dso_local global i32 0, align 4
@FUNC_SEL = common dso_local global i32 0, align 4
@FUNC_HDMI_EN = common dso_local global i32 0, align 4
@CLKPWD = common dso_local global i32 0, align 4
@CLKPWD_PDIDCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_hdmi*)* @zx_hdmi_hw_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_hdmi_hw_disable(%struct.zx_hdmi* %0) #0 {
  %2 = alloca %struct.zx_hdmi*, align 8
  store %struct.zx_hdmi* %0, %struct.zx_hdmi** %2, align 8
  %3 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %4 = load i32, i32* @INTR1_MASK, align 4
  %5 = load i32, i32* @INTR1_MONITOR_DETECT, align 4
  %6 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %3, i32 %4, i32 %5, i32 0)
  %7 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %8 = load i32, i32* @P2T_CTRL, align 4
  %9 = load i32, i32* @P2T_DC_PKT_EN, align 4
  %10 = load i32, i32* @P2T_DC_PKT_EN, align 4
  %11 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %13 = load i32, i32* @FUNC_SEL, align 4
  %14 = load i32, i32* @FUNC_HDMI_EN, align 4
  %15 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %17 = load i32, i32* @CLKPWD, align 4
  %18 = load i32, i32* @CLKPWD_PDIDCK, align 4
  %19 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %16, i32 %17, i32 %18, i32 0)
  ret void
}

declare dso_local i32 @hdmi_writeb_mask(%struct.zx_hdmi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
