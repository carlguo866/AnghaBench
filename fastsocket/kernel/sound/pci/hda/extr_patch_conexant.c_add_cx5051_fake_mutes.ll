; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_add_cx5051_fake_mutes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_add_cx5051_fake_mutes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@add_cx5051_fake_mutes.out_nids = internal global [3 x i32] [i32 16, i32 17, i32 0], align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@AC_AMPCAP_MIN_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @add_cx5051_fake_mutes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cx5051_fake_mutes(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @add_cx5051_fake_mutes.out_nids, i64 0, i64 0), i32** %3, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HDA_OUTPUT, align 4
  %13 = load i32, i32* @AC_AMPCAP_MIN_MUTE, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HDA_OUTPUT, align 4
  %18 = call i32 @query_amp_caps(%struct.hda_codec* %14, i32 %16, i32 %17)
  %19 = or i32 %13, %18
  %20 = call i32 @snd_hda_override_amp_caps(%struct.hda_codec* %9, i32 %11, i32 %12, i32 %19)
  br label %21

21:                                               ; preds = %8
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %3, align 8
  br label %4

24:                                               ; preds = %4
  ret void
}

declare dso_local i32 @snd_hda_override_amp_caps(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @query_amp_caps(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
