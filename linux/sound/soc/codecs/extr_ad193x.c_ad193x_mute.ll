; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ad193x_priv = type { i32 }

@AD193X_DAC_CTRL2 = common dso_local global i32 0, align 4
@AD193X_DAC_MASTER_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ad193x_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad193x_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad193x_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ad193x_priv* @snd_soc_component_get_drvdata(i32 %8)
  store %struct.ad193x_priv* %9, %struct.ad193x_priv** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.ad193x_priv*, %struct.ad193x_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AD193X_DAC_CTRL2, align 4
  %17 = load i32, i32* @AD193X_DAC_MASTER_MUTE, align 4
  %18 = load i32, i32* @AD193X_DAC_MASTER_MUTE, align 4
  %19 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 %18)
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.ad193x_priv*, %struct.ad193x_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AD193X_DAC_CTRL2, align 4
  %25 = load i32, i32* @AD193X_DAC_MASTER_MUTE, align 4
  %26 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %20, %12
  ret i32 0
}

declare dso_local %struct.ad193x_priv* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
