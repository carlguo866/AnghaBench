; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_reboot_notify.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_reboot_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32 (%struct.hda_codec*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_reboot_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_reboot_notify(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  store %struct.alc_spec* %6, %struct.alc_spec** %3, align 8
  %7 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %8 = icmp ne %struct.alc_spec* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %11 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %10, i32 0, i32 0
  %12 = load i32 (%struct.hda_codec*)*, i32 (%struct.hda_codec*)** %11, align 8
  %13 = icmp ne i32 (%struct.hda_codec*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %16 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %15, i32 0, i32 0
  %17 = load i32 (%struct.hda_codec*)*, i32 (%struct.hda_codec*)** %16, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 %17(%struct.hda_codec* %18)
  br label %23

20:                                               ; preds = %9, %1
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @alc_shutup(%struct.hda_codec* %21)
  br label %23

23:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @alc_shutup(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
