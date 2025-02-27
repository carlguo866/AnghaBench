; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs_vendor_coef_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs_vendor_coef_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { i32 }

@AC_VERB_SET_COEF_INDEX = common dso_local global i32 0, align 4
@AC_VERB_GET_PROC_COEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @cs_vendor_coef_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_vendor_coef_get(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.cs_spec*, %struct.cs_spec** %7, align 8
  store %struct.cs_spec* %8, %struct.cs_spec** %5, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  %11 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AC_VERB_SET_COEF_INDEX, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @snd_hda_codec_write(%struct.hda_codec* %9, i32 %12, i32 0, i32 %13, i32 %14)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  %18 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AC_VERB_GET_PROC_COEF, align 4
  %21 = call i32 @snd_hda_codec_read(%struct.hda_codec* %16, i32 %19, i32 0, i32 %20, i32 0)
  ret i32 %21
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
