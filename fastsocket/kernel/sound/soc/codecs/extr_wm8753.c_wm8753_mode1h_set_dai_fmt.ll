; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_mode1h_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_mode1h_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8753_mode1h_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_mode1h_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @wm8753_hdac_set_dai_fmt(%struct.snd_soc_dai* %6, i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @wm8753_i2s_set_dai_fmt(%struct.snd_soc_dai* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i64 @wm8753_hdac_set_dai_fmt(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @wm8753_i2s_set_dai_fmt(%struct.snd_soc_dai*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
