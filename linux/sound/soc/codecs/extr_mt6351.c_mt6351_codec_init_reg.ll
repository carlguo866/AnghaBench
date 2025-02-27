; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6351.c_mt6351_codec_init_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6351.c_mt6351_codec_init_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@MT6351_TOP_CLKSQ = common dso_local global i32 0, align 4
@MT6351_AUDDEC_ANA_CON9 = common dso_local global i32 0, align 4
@MT6351_TOP_CKPDN_CON0_SET = common dso_local global i32 0, align 4
@MT6351_AUDDEC_ANA_CON0 = common dso_local global i32 0, align 4
@MT6351_AUDDEC_ANA_CON3 = common dso_local global i32 0, align 4
@MT6351_AFE_PMIC_NEWIF_CFG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @mt6351_codec_init_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6351_codec_init_reg(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %3 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %4 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MT6351_TOP_CLKSQ, align 4
  %7 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 1, i32 0)
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MT6351_AUDDEC_ANA_CON9, align 4
  %12 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 4096, i32 4096)
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MT6351_TOP_CKPDN_CON0_SET, align 4
  %17 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 14336, i32 14336)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MT6351_AUDDEC_ANA_CON0, align 4
  %22 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 57344, i32 57344)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MT6351_AUDDEC_ANA_CON3, align 4
  %27 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 32, i32 32)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MT6351_AFE_PMIC_NEWIF_CFG2, align 4
  %32 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 32768, i32 32768)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
