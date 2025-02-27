; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau7002.c_adau7002_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau7002.c_adau7002_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adau7002_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wakeup-delay-ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @adau7002_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau7002_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.adau7002_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.adau7002_priv* @devm_kzalloc(i32 %7, i32 4, i32 %8)
  store %struct.adau7002_priv* %9, %struct.adau7002_priv** %4, align 8
  %10 = load %struct.adau7002_priv*, %struct.adau7002_priv** %4, align 8
  %11 = icmp ne %struct.adau7002_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.adau7002_priv*, %struct.adau7002_priv** %4, align 8
  %20 = getelementptr inbounds %struct.adau7002_priv, %struct.adau7002_priv* %19, i32 0, i32 0
  %21 = call i32 @device_property_read_u32(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = load %struct.adau7002_priv*, %struct.adau7002_priv** %4, align 8
  %24 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %22, %struct.adau7002_priv* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %15, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.adau7002_priv* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @device_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, %struct.adau7002_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
