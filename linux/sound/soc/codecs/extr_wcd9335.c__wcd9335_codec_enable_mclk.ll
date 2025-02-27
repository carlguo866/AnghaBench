; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c__wcd9335_codec_enable_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c__wcd9335_codec_enable_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { i32 }

@SIDO_VOLTAGE_NOMINAL_MV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @_wcd9335_codec_enable_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wcd9335_codec_enable_mclk(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wcd9335_codec*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %10)
  store %struct.wcd9335_codec* %11, %struct.wcd9335_codec** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %6, align 8
  %16 = call i32 @wcd9335_cdc_req_mclk_enable(%struct.wcd9335_codec* %15, i32 1)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %14
  %22 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %6, align 8
  %23 = load i32, i32* @SIDO_VOLTAGE_NOMINAL_MV, align 4
  %24 = call i32 @wcd9335_codec_apply_sido_voltage(%struct.wcd9335_codec* %22, i32 %23)
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %6, align 8
  %27 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %6, align 8
  %28 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wcd9335_codec_update_sido_voltage(%struct.wcd9335_codec* %26, i32 %29)
  %31 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %6, align 8
  %32 = call i32 @wcd9335_cdc_req_mclk_enable(%struct.wcd9335_codec* %31, i32 0)
  br label %33

33:                                               ; preds = %25, %21
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @wcd9335_cdc_req_mclk_enable(%struct.wcd9335_codec*, i32) #1

declare dso_local i32 @wcd9335_codec_apply_sido_voltage(%struct.wcd9335_codec*, i32) #1

declare dso_local i32 @wcd9335_codec_update_sido_voltage(%struct.wcd9335_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
