; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm281xx.c_pin_type_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm281xx.c_pin_type_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.bcm281xx_pinctrl_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BCM281XX_PIN_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32)* @pin_type_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_type_get(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm281xx_pinctrl_data*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %8 = call %struct.bcm281xx_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %7)
  store %struct.bcm281xx_pinctrl_data* %8, %struct.bcm281xx_pinctrl_data** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.bcm281xx_pinctrl_data*, %struct.bcm281xx_pinctrl_data** %6, align 8
  %11 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, %struct.bcm281xx_pinctrl_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp uge i32 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @BCM281XX_PIN_TYPE_UNKNOWN, align 4
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.bcm281xx_pinctrl_data*, %struct.bcm281xx_pinctrl_data** %6, align 8
  %18 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, %struct.bcm281xx_pinctrl_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %16, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.bcm281xx_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
