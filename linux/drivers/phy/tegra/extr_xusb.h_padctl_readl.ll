; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.h_padctl_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.h_padctl_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"%08lx > %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_padctl*, i64)* @padctl_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padctl_readl(%struct.tegra_xusb_padctl* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra_xusb_padctl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = add i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
