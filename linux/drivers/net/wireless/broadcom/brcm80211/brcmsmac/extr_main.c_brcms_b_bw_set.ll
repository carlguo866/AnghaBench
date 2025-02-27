; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_bw_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_bw_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BCMA_CLKMODE_FAST = common dso_local global i32 0, align 4
@BCMA_CLKMODE_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_b_bw_set(%struct.brcms_hardware* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %13 = load i32, i32* @BCMA_CLKMODE_FAST, align 4
  %14 = call i32 @brcms_b_clkctl_clk(%struct.brcms_hardware* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %17 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @wlc_phy_bw_state_set(i32 %20, i32 %21)
  %23 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %24 = call i32 @brcms_b_phy_reset(%struct.brcms_hardware* %23)
  %25 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %26 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wlc_phy_chanspec_get(i32 %34)
  %36 = call i32 @wlc_phy_init(i32 %29, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %15
  %40 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %41 = load i32, i32* @BCMA_CLKMODE_DYNAMIC, align 4
  %42 = call i32 @brcms_b_clkctl_clk(%struct.brcms_hardware* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %15
  ret void
}

declare dso_local i32 @brcms_b_clkctl_clk(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @wlc_phy_bw_state_set(i32, i32) #1

declare dso_local i32 @brcms_b_phy_reset(%struct.brcms_hardware*) #1

declare dso_local i32 @wlc_phy_init(i32, i32) #1

declare dso_local i32 @wlc_phy_chanspec_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
