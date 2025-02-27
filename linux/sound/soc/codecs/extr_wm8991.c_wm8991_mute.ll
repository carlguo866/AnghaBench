; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8991.c_wm8991_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8991.c_wm8991_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8991_DAC_CTRL = common dso_local global i32 0, align 4
@WM8991_DAC_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8991_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8991_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = load i32, i32* @WM8991_DAC_CTRL, align 4
  %12 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %10, i32 %11)
  %13 = load i32, i32* @WM8991_DAC_MUTE, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %20 = load i32, i32* @WM8991_DAC_CTRL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @WM8991_DAC_MUTE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %19, i32 %20, i32 %23)
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %27 = load i32, i32* @WM8991_DAC_CTRL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  ret i32 0
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
