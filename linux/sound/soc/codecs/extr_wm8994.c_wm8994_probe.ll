; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wm8994_priv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_component_dev_wm8994 = common dso_local global i32 0, align 4
@wm8994_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8994_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm8994_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wm8994_priv* @devm_kzalloc(%struct.TYPE_5__* %6, i32 8, i32 %7)
  store %struct.wm8994_priv* %8, %struct.wm8994_priv** %4, align 8
  %9 = load %struct.wm8994_priv*, %struct.wm8994_priv** %4, align 8
  %10 = icmp eq %struct.wm8994_priv* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load %struct.wm8994_priv*, %struct.wm8994_priv** %4, align 8
  %17 = call i32 @platform_set_drvdata(%struct.platform_device* %15, %struct.wm8994_priv* %16)
  %18 = load %struct.wm8994_priv*, %struct.wm8994_priv** %4, align 8
  %19 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %18, i32 0, i32 1
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_get_drvdata(i32 %24)
  %26 = load %struct.wm8994_priv*, %struct.wm8994_priv** %4, align 8
  %27 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @pm_runtime_enable(%struct.TYPE_5__* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @pm_runtime_idle(%struct.TYPE_5__* %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @wm8994_dai, align 4
  %37 = load i32, i32* @wm8994_dai, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = call i32 @devm_snd_soc_register_component(%struct.TYPE_5__* %35, i32* @soc_component_dev_wm8994, i32 %36, i32 %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %14, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.wm8994_priv* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm8994_priv*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
