; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_slider_ctl_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_slider_ctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64* }

@OUT_EFFECT_START_NID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ca0132_alt_slider_ctl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_alt_slider_ctl_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.ca0132_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hda_codec* %11, %struct.hda_codec** %5, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.ca0132_spec*, %struct.ca0132_spec** %13, align 8
  store %struct.ca0132_spec* %14, %struct.ca0132_spec** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = call i32 @get_amp_nid(%struct.snd_kcontrol* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @OUT_EFFECT_START_NID, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %26 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %8, align 8
  store i64 %31, i64* %32, align 8
  ret i32 0
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_nid(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
