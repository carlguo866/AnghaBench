; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_pinmux_get_fn_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_pinmux_get_fn_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.aspeed_pinctrl_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aspeed_pinmux_get_fn_groups(%struct.pinctrl_dev* %0, i32 %1, i8*** %2, i32* %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.aspeed_pinctrl_data*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8*** %2, i8**** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %11 = call %struct.aspeed_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.aspeed_pinctrl_data* %11, %struct.aspeed_pinctrl_data** %9, align 8
  %12 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %9, align 8
  %13 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i8***, i8**** %7, align 8
  store i8** %20, i8*** %21, align 8
  %22 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %9, align 8
  %23 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  ret i32 0
}

declare dso_local %struct.aspeed_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
