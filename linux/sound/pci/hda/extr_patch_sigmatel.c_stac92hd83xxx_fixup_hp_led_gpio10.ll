; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac92hd83xxx_fixup_hp_led_gpio10.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac92hd83xxx_fixup_hp_led_gpio10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i64 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @stac92hd83xxx_fixup_hp_led_gpio10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac92hd83xxx_fixup_hp_led_gpio10(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigmatel_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  store %struct.sigmatel_spec* %10, %struct.sigmatel_spec** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %16 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %15, i32 0, i32 0
  store i32 16, i32* %16, align 8
  %17 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %18 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %14, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
