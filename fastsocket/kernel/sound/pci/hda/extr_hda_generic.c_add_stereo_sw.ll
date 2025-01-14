; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_stereo_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_stereo_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32 }

@NID_PATH_MUTE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, i32, %struct.nid_path*)* @add_stereo_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_stereo_sw(%struct.hda_codec* %0, i8* %1, i32 %2, %struct.nid_path* %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nid_path*, align 8
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nid_path* %3, %struct.nid_path** %8, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = load %struct.nid_path*, %struct.nid_path** %8, align 8
  %12 = load i32, i32* @NID_PATH_MUTE_CTL, align 4
  %13 = call i32 @get_default_ch_nums(%struct.hda_codec* %10, %struct.nid_path* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.nid_path*, %struct.nid_path** %8, align 8
  %19 = call i32 @add_sw_ctl(%struct.hda_codec* %14, i8* %15, i32 %16, i32 %17, %struct.nid_path* %18)
  ret i32 %19
}

declare dso_local i32 @get_default_ch_nums(%struct.hda_codec*, %struct.nid_path*, i32) #1

declare dso_local i32 @add_sw_ctl(%struct.hda_codec*, i8*, i32, i32, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
