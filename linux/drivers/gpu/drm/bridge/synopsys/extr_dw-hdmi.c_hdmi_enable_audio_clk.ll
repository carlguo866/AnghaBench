; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_enable_audio_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_enable_audio_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }

@HDMI_MC_CLKDIS_AUDCLK_DISABLE = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*, i32)* @hdmi_enable_audio_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_enable_audio_clk(%struct.dw_hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* @HDMI_MC_CLKDIS_AUDCLK_DISABLE, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @HDMI_MC_CLKDIS_AUDCLK_DISABLE, align 4
  %16 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %17 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %14, %7
  %21 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %22 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %23 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HDMI_MC_CLKDIS, align 4
  %26 = call i32 @hdmi_writeb(%struct.dw_hdmi* %21, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
