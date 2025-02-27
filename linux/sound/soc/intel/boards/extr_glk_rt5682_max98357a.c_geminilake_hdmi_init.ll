; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_glk_rt5682_max98357a.c_geminilake_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_glk_rt5682_max98357a.c_geminilake_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__*, %struct.snd_soc_dai* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dai = type { i64 }
%struct.glk_card_private = type { i32 }
%struct.glk_hdmi_pcm = type { i32, %struct.snd_soc_dai*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GLK_DPCM_AUDIO_HDMI1_PB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @geminilake_hdmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geminilake_hdmi_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.glk_card_private*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.glk_hdmi_pcm*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call %struct.glk_card_private* @snd_soc_card_get_drvdata(%struct.TYPE_2__* %9)
  store %struct.glk_card_private* %10, %struct.glk_card_private** %4, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %12, align 8
  store %struct.snd_soc_dai* %13, %struct.snd_soc_dai** %5, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.glk_hdmi_pcm* @devm_kzalloc(i32 %18, i32 24, i32 %19)
  store %struct.glk_hdmi_pcm* %20, %struct.glk_hdmi_pcm** %6, align 8
  %21 = load %struct.glk_hdmi_pcm*, %struct.glk_hdmi_pcm** %6, align 8
  %22 = icmp ne %struct.glk_hdmi_pcm* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %42

26:                                               ; preds = %1
  %27 = load i64, i64* @GLK_DPCM_AUDIO_HDMI1_PB, align 8
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.glk_hdmi_pcm*, %struct.glk_hdmi_pcm** %6, align 8
  %33 = getelementptr inbounds %struct.glk_hdmi_pcm, %struct.glk_hdmi_pcm* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %35 = load %struct.glk_hdmi_pcm*, %struct.glk_hdmi_pcm** %6, align 8
  %36 = getelementptr inbounds %struct.glk_hdmi_pcm, %struct.glk_hdmi_pcm* %35, i32 0, i32 1
  store %struct.snd_soc_dai* %34, %struct.snd_soc_dai** %36, align 8
  %37 = load %struct.glk_hdmi_pcm*, %struct.glk_hdmi_pcm** %6, align 8
  %38 = getelementptr inbounds %struct.glk_hdmi_pcm, %struct.glk_hdmi_pcm* %37, i32 0, i32 0
  %39 = load %struct.glk_card_private*, %struct.glk_card_private** %4, align 8
  %40 = getelementptr inbounds %struct.glk_card_private, %struct.glk_card_private* %39, i32 0, i32 0
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %26, %23
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.glk_card_private* @snd_soc_card_get_drvdata(%struct.TYPE_2__*) #1

declare dso_local %struct.glk_hdmi_pcm* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
