; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-375.c_armada_375_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-375.c_armada_375_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pinctrl_soc_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i64 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mvebu_pinctrl_soc_info* }

@armada_375_pinctrl_info = common dso_local global %struct.mvebu_pinctrl_soc_info zeroinitializer, align 8
@mv88f6720_mpp_controls = common dso_local global i8* null, align 8
@mv88f6720_mpp_modes = common dso_local global i8* null, align 8
@mv88f6720_mpp_gpio_ranges = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada_375_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_375_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mvebu_pinctrl_soc_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store %struct.mvebu_pinctrl_soc_info* @armada_375_pinctrl_info, %struct.mvebu_pinctrl_soc_info** %3, align 8
  %4 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %3, align 8
  %5 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %4, i32 0, i32 6
  store i64 0, i64* %5, align 8
  %6 = load i8*, i8** @mv88f6720_mpp_controls, align 8
  %7 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %3, align 8
  %8 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %7, i32 0, i32 5
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @mv88f6720_mpp_controls, align 8
  %10 = call i8* @ARRAY_SIZE(i8* %9)
  %11 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %3, align 8
  %12 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @mv88f6720_mpp_modes, align 8
  %14 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %3, align 8
  %15 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @mv88f6720_mpp_modes, align 8
  %17 = call i8* @ARRAY_SIZE(i8* %16)
  %18 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %3, align 8
  %19 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @mv88f6720_mpp_gpio_ranges, align 8
  %21 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %3, align 8
  %22 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @mv88f6720_mpp_gpio_ranges, align 8
  %24 = call i8* @ARRAY_SIZE(i8* %23)
  %25 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %3, align 8
  %26 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %3, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.mvebu_pinctrl_soc_info* %27, %struct.mvebu_pinctrl_soc_info** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = call i32 @mvebu_pinctrl_simple_mmio_probe(%struct.platform_device* %31)
  ret i32 %32
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @mvebu_pinctrl_simple_mmio_probe(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
