; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_patch_vt1702.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_patch_vt1702.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.via_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@AC_AMPCAP_OFFSET_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE_SHIFT = common dso_local global i32 0, align 4
@vt1702_init_verbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_vt1702 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt1702(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call %struct.via_spec* @via_new_spec(%struct.hda_codec* %6)
  store %struct.via_spec* %7, %struct.via_spec** %4, align 8
  %8 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %9 = icmp eq %struct.via_spec* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 26, i32* %16, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = load i32, i32* @HDA_INPUT, align 4
  %19 = load i32, i32* @AC_AMPCAP_OFFSET_SHIFT, align 4
  %20 = shl i32 23, %19
  %21 = load i32, i32* @AC_AMPCAP_NUM_STEPS_SHIFT, align 4
  %22 = shl i32 23, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* @AC_AMPCAP_STEP_SIZE_SHIFT, align 4
  %25 = shl i32 5, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @AC_AMPCAP_MUTE_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = call i32 @snd_hda_override_amp_caps(%struct.hda_codec* %17, i32 26, i32 %18, i32 %29)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = load i32, i32* @vt1702_init_verbs, align 4
  %33 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %13
  br label %44

37:                                               ; preds = %13
  %38 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %39 = call i32 @via_parse_auto_config(%struct.hda_codec* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %48

44:                                               ; preds = %42, %36
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = call i32 @via_free(%struct.hda_codec* %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %43, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.via_spec* @via_new_spec(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_override_amp_caps(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @via_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @via_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
