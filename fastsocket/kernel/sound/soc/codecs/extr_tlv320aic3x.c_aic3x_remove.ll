; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, i64 }

@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aic3x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_device*, align 8
  %4 = alloca %struct.snd_soc_codec*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.snd_soc_device* %6, %struct.snd_soc_device** %3, align 8
  %7 = load %struct.snd_soc_device*, %struct.snd_soc_device** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %4, align 8
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %18 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %19 = call i32 @aic3x_set_bias_level(%struct.snd_soc_codec* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.snd_soc_device*, %struct.snd_soc_device** %3, align 8
  %22 = call i32 @snd_soc_free_pcms(%struct.snd_soc_device* %21)
  %23 = load %struct.snd_soc_device*, %struct.snd_soc_device** %3, align 8
  %24 = call i32 @snd_soc_dapm_free(%struct.snd_soc_device* %23)
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @kfree(i32 %27)
  ret i32 0
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @aic3x_set_bias_level(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_free_pcms(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_dapm_free(%struct.snd_soc_device*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
