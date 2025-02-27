; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_conexant_mux_enum_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_conexant_mux_enum_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @conexant_mux_enum_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conexant_mux_enum_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.conexant_spec*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.hda_codec* %9, %struct.hda_codec** %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.conexant_spec*, %struct.conexant_spec** %11, align 8
  store %struct.conexant_spec* %12, %struct.conexant_spec** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %13, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %18 = load %struct.conexant_spec*, %struct.conexant_spec** %6, align 8
  %19 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = load %struct.conexant_spec*, %struct.conexant_spec** %6, align 8
  %23 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.conexant_spec*, %struct.conexant_spec** %6, align 8
  %30 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @snd_hda_input_mux_put(%struct.hda_codec* %17, i32 %20, %struct.snd_ctl_elem_value* %21, i32 %28, i32* %34)
  ret i32 %35
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @snd_hda_input_mux_put(%struct.hda_codec*, i32, %struct.snd_ctl_elem_value*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
