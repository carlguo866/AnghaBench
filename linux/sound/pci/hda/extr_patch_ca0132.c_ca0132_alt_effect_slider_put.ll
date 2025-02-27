; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_effect_slider_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_effect_slider_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64* }

@EFFECT_START_NID = common dso_local global i32 0, align 4
@float_zero_to_one_lookup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ca0132_alt_effect_slider_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_alt_effect_slider_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.ca0132_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hda_codec* %12, %struct.hda_codec** %6, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  store %struct.ca0132_spec* %15, %struct.ca0132_spec** %7, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = call i32 @get_amp_nid(%struct.snd_kcontrol* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EFFECT_START_NID, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  %27 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

37:                                               ; preds = %2
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  %41 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %39, i64* %45, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @float_zero_to_one_lookup, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ca0132_alt_slider_ctl_set(%struct.hda_codec* %49, i32 %50, i32 %51, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %37, %36
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_nid(%struct.snd_kcontrol*) #1

declare dso_local i32 @ca0132_alt_slider_ctl_set(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
