; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc5505_dsp_halt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc5505_dsp_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc5505_dsp_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc5505_dsp_halt(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = call i32 @alc5505_coef_set(%struct.hda_codec* %4, i32 12288, i32 12)
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = call i32 @alc5505_coef_set(%struct.hda_codec* %6, i32 34828, i32 8)
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = call i32 @alc5505_coef_set(%struct.hda_codec* %8, i32 25024, i32 286326912)
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = call i32 @alc5505_coef_set(%struct.hda_codec* %10, i32 25136, i32 -66240495)
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @alc5505_coef_set(%struct.hda_codec* %12, i32 25012, i32 67775235)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @alc5505_coef_set(%struct.hda_codec* %14, i32 25008, i32 23319)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @alc5505_coef_set(%struct.hda_codec* %16, i32 25016, i32 68367107)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @alc5505_coef_get(%struct.hda_codec* %18, i32 25120)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, 12288
  %23 = call i32 @alc5505_coef_set(%struct.hda_codec* %20, i32 25120, i32 %22)
  ret void
}

declare dso_local i32 @alc5505_coef_set(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @alc5505_coef_get(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
