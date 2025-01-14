; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_pinctrl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_pinctrl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.i2c_demux_pinctrl_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@dev_attr_current_master = common dso_local global i32 0, align 4
@dev_attr_available_masters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_demux_pinctrl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_demux_pinctrl_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.i2c_demux_pinctrl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.i2c_demux_pinctrl_priv* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.i2c_demux_pinctrl_priv* %6, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @device_remove_file(i32* %8, i32* @dev_attr_current_master)
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @device_remove_file(i32* %11, i32* @dev_attr_available_masters)
  %13 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %14 = call i32 @i2c_demux_deactivate_master(%struct.i2c_demux_pinctrl_priv* %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %39, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @of_node_put(i32 %29)
  %31 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @of_changeset_destroy(i32* %37)
  br label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %15

42:                                               ; preds = %15
  ret i32 0
}

declare dso_local %struct.i2c_demux_pinctrl_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @i2c_demux_deactivate_master(%struct.i2c_demux_pinctrl_priv*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @of_changeset_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
