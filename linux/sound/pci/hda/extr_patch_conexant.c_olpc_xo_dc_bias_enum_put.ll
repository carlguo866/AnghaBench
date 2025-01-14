; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_olpc_xo_dc_bias_enum_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_olpc_xo_dc_bias_enum_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_input_mux = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i64 }

@olpc_xo_dc_bias = common dso_local global %struct.hda_input_mux zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @olpc_xo_dc_bias_enum_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_xo_dc_bias_enum_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.conexant_spec*, align 8
  %8 = alloca %struct.hda_input_mux*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hda_codec* %11, %struct.hda_codec** %6, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.conexant_spec*, %struct.conexant_spec** %13, align 8
  store %struct.conexant_spec* %14, %struct.conexant_spec** %7, align 8
  store %struct.hda_input_mux* @olpc_xo_dc_bias, %struct.hda_input_mux** %8, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %24 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp uge i32 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %29 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %2
  %33 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %34 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %51

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %42 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %44 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %49 = call i32 @olpc_xo_update_mic_pins(%struct.hda_codec* %48)
  br label %50

50:                                               ; preds = %47, %39
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @olpc_xo_update_mic_pins(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
