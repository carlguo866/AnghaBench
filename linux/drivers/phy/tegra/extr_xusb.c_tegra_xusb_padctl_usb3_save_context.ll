; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_padctl_usb3_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_padctl_usb3_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_xusb_padctl_usb3_save_context(%struct.tegra_xusb_padctl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_xusb_padctl*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.tegra_xusb_padctl*, i32)**
  %13 = load i32 (%struct.tegra_xusb_padctl*, i32)*, i32 (%struct.tegra_xusb_padctl*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.tegra_xusb_padctl*, i32)* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.tegra_xusb_padctl*, i32)**
  %23 = load i32 (%struct.tegra_xusb_padctl*, i32)*, i32 (%struct.tegra_xusb_padctl*, i32)** %22, align 8
  %24 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %23(%struct.tegra_xusb_padctl* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
