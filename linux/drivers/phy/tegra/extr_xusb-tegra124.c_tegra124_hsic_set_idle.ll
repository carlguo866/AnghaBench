; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_hsic_set_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_hsic_set_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i32 }

@XUSB_PADCTL_HSIC_PAD_CTL1_RPD_DATA = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_RPU_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_padctl*, i32, i32)* @tegra124_hsic_set_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_hsic_set_idle(%struct.tegra_xusb_padctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_xusb_padctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32 %9)
  %11 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %8, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_RPD_DATA, align 4
  %16 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_RPU_STROBE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_RPD_DATA, align 4
  %22 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_RPU_STROBE, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32 %30)
  %32 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %28, i32 %29, i32 %31)
  ret i32 0
}

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
