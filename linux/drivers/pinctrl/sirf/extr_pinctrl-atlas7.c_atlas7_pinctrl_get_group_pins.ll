; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pinctrl_get_group_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pinctrl_get_group_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.atlas7_pmx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i64, i64**, i64*)* @atlas7_pinctrl_get_group_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_pinctrl_get_group_pins(%struct.pinctrl_dev* %0, i64 %1, i64** %2, i64* %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.atlas7_pmx*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64** %2, i64*** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %11 = call %struct.atlas7_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.atlas7_pmx* %11, %struct.atlas7_pmx** %9, align 8
  %12 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %9, align 8
  %13 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %8, align 8
  store i64 %20, i64* %21, align 8
  %22 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %9, align 8
  %23 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64**, i64*** %7, align 8
  store i64* %30, i64** %31, align 8
  ret i32 0
}

declare dso_local %struct.atlas7_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
