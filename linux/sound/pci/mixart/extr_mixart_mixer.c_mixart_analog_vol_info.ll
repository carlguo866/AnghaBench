; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_mixer.c_mixart_analog_vol_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_mixer.c_mixart_analog_vol_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@MIXART_ANALOG_PLAYBACK_LEVEL_MIN = common dso_local global i32 0, align 4
@MIXART_ANALOG_PLAYBACK_LEVEL_MAX = common dso_local global i32 0, align 4
@MIXART_ANALOG_CAPTURE_LEVEL_MIN = common dso_local global i32 0, align 4
@MIXART_ANALOG_CAPTURE_LEVEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @mixart_analog_vol_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_analog_vol_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %5 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %6 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %7 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %8, i32 0, i32 0
  store i32 2, i32* %9, align 4
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* @MIXART_ANALOG_PLAYBACK_LEVEL_MIN, align 4
  %16 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @MIXART_ANALOG_PLAYBACK_LEVEL_MAX, align 4
  %21 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load i32, i32* @MIXART_ANALOG_CAPTURE_LEVEL_MIN, align 4
  %27 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @MIXART_ANALOG_CAPTURE_LEVEL_MAX, align 4
  %32 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %25, %14
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
