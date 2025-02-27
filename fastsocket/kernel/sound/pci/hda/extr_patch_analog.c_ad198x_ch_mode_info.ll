; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad198x_ch_mode_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad198x_ch_mode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.hda_codec = type { %struct.ad198x_spec* }
%struct.ad198x_spec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @ad198x_ch_mode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad198x_ch_mode_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.ad198x_spec*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.hda_codec* %8, %struct.hda_codec** %5, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.ad198x_spec*, %struct.ad198x_spec** %10, align 8
  store %struct.ad198x_spec* %11, %struct.ad198x_spec** %6, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %14 = load %struct.ad198x_spec*, %struct.ad198x_spec** %6, align 8
  %15 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ad198x_spec*, %struct.ad198x_spec** %6, align 8
  %18 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_hda_ch_mode_info(%struct.hda_codec* %12, %struct.snd_ctl_elem_info* %13, i32 %16, i32 %19)
  ret i32 %20
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_ch_mode_info(%struct.hda_codec*, %struct.snd_ctl_elem_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
