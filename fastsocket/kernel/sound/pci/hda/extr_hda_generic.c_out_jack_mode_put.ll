; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_out_jack_mode_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_out_jack_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.hda_codec = type { i32 }

@PIN_HP = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @out_jack_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @out_jack_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.hda_codec* %10, %struct.hda_codec** %6, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @PIN_HP, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @PIN_OUT, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %8, align 4
  %28 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %35, i32 %36, i32 %37)
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
