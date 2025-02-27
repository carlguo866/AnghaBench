; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_dmic_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_dmic_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.nau8824 = type { i32, i32, i32 }

@DMIC_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dmic src %d for mclk %d\0A\00", align 1
@NAU8824_REG_CLK_DIVIDER = common dso_local global i32 0, align 4
@NAU8824_CLK_DMIC_SRC_MASK = common dso_local global i32 0, align 4
@NAU8824_CLK_DMIC_SRC_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @dmic_clock_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmic_clock_control(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.nau8824*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.nau8824* %15, %struct.nau8824** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %31, %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 8, %20
  %22 = shl i32 1, %21
  %23 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %24 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load i32, i32* @DMIC_CLK, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %16

34:                                               ; preds = %29, %16
  %35 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %36 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %40 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 256
  %43 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %45 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NAU8824_REG_CLK_DIVIDER, align 4
  %48 = load i32, i32* @NAU8824_CLK_DMIC_SRC_MASK, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @NAU8824_CLK_DMIC_SRC_SFT, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %51)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
