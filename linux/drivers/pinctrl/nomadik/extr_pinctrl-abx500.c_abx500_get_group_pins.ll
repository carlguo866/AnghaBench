; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_get_group_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_get_group_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.abx500_pinctrl = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32**, i32*)* @abx500_get_group_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_get_group_pins(%struct.pinctrl_dev* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.abx500_pinctrl*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %11 = call %struct.abx500_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.abx500_pinctrl* %11, %struct.abx500_pinctrl** %9, align 8
  %12 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %9, align 8
  %13 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32**, i32*** %7, align 8
  store i32* %21, i32** %22, align 8
  %23 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %9, align 8
  %24 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  ret i32 0
}

declare dso_local %struct.abx500_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
