; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4740.c_jz4740_codec_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4740.c_jz4740_codec_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.jz4740_codec = type { %struct.regmap* }
%struct.regmap = type { i32 }

@JZ4740_CODEC_1_VREF_DISABLE = common dso_local global i32 0, align 4
@JZ4740_CODEC_1_VREF_AMP_DISABLE = common dso_local global i32 0, align 4
@JZ4740_CODEC_1_HEADPHONE_POWERDOWN_M = common dso_local global i32 0, align 4
@JZ4740_REG_CODEC_1 = common dso_local global i32 0, align 4
@JZ4740_CODEC_1_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @jz4740_codec_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_codec_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jz4740_codec*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.jz4740_codec* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.jz4740_codec* %10, %struct.jz4740_codec** %5, align 8
  %11 = load %struct.jz4740_codec*, %struct.jz4740_codec** %5, align 8
  %12 = getelementptr inbounds %struct.jz4740_codec, %struct.jz4740_codec* %11, i32 0, i32 0
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %6, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %60 [
    i32 130, label %15
    i32 129, label %16
    i32 128, label %27
    i32 131, label %50
  ]

15:                                               ; preds = %2
  br label %61

16:                                               ; preds = %2
  %17 = load i32, i32* @JZ4740_CODEC_1_VREF_DISABLE, align 4
  %18 = load i32, i32* @JZ4740_CODEC_1_VREF_AMP_DISABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @JZ4740_CODEC_1_HEADPHONE_POWERDOWN_M, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load %struct.regmap*, %struct.regmap** %6, align 8
  %23 = load i32, i32* @JZ4740_REG_CODEC_1, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @regmap_update_bits(%struct.regmap* %22, i32 %23, i32 %24, i32 %25)
  br label %61

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %28)
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = call i32 @jz4740_codec_wakeup(%struct.regmap* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* @JZ4740_CODEC_1_VREF_DISABLE, align 4
  %36 = load i32, i32* @JZ4740_CODEC_1_VREF_AMP_DISABLE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @JZ4740_CODEC_1_HEADPHONE_POWERDOWN_M, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @JZ4740_CODEC_1_VREF_DISABLE, align 4
  %41 = load i32, i32* @JZ4740_CODEC_1_VREF_AMP_DISABLE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @JZ4740_CODEC_1_HEADPHONE_POWERDOWN_M, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.regmap*, %struct.regmap** %6, align 8
  %46 = load i32, i32* @JZ4740_REG_CODEC_1, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @regmap_update_bits(%struct.regmap* %45, i32 %46, i32 %47, i32 %48)
  br label %61

50:                                               ; preds = %2
  %51 = load i32, i32* @JZ4740_CODEC_1_SUSPEND, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @JZ4740_CODEC_1_SUSPEND, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.regmap*, %struct.regmap** %6, align 8
  %54 = load i32, i32* @JZ4740_REG_CODEC_1, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @regmap_update_bits(%struct.regmap* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.regmap*, %struct.regmap** %6, align 8
  %59 = call i32 @regcache_mark_dirty(%struct.regmap* %58)
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %50, %34, %16, %15
  ret i32 0
}

declare dso_local %struct.jz4740_codec* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @jz4740_codec_wakeup(%struct.regmap*) #1

declare dso_local i32 @regcache_mark_dirty(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
