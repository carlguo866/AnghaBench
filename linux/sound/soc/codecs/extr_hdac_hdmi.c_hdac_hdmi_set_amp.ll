; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_set_amp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_set_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }

@AC_WCAP_OUT_AMP = common dso_local global i32 0, align 4
@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_device*, i32, i32)* @hdac_hdmi_set_amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_hdmi_set_amp(%struct.hdac_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @get_wcaps(%struct.hdac_device* %7, i32 %8)
  %10 = load i32, i32* @AC_WCAP_OUT_AMP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @snd_hdac_codec_write(%struct.hdac_device* %14, i32 %15, i32 0, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  ret void
}

declare dso_local i32 @get_wcaps(%struct.hdac_device*, i32) #1

declare dso_local i32 @snd_hdac_codec_write(%struct.hdac_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
