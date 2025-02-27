; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_patch_nvhdmi_2ch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_patch_nvhdmi_2ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec*, %struct.TYPE_3__ }
%struct.hdmi_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@nvhdmi_master_con_nid_7x = common dso_local global i32 0, align 4
@nvhdmi_master_pin_nid_7x = common dso_local global i32 0, align 4
@nvhdmi_7x_init_2ch = common dso_local global i32 0, align 4
@SUPPORTED_RATES = common dso_local global i32 0, align 4
@SUPPORTED_MAXBPS = common dso_local global i32 0, align 4
@SUPPORTED_FORMATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_nvhdmi_2ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_nvhdmi_2ch(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = load i32, i32* @nvhdmi_master_con_nid_7x, align 4
  %8 = load i32, i32* @nvhdmi_master_pin_nid_7x, align 4
  %9 = call i32 @patch_simple_hdmi(%struct.hda_codec* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @nvhdmi_7x_init_2ch, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 0
  %21 = load %struct.hdmi_spec*, %struct.hdmi_spec** %20, align 8
  store %struct.hdmi_spec* %21, %struct.hdmi_spec** %4, align 8
  %22 = load i32, i32* @SUPPORTED_RATES, align 4
  %23 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %24 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @SUPPORTED_MAXBPS, align 4
  %27 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %28 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @SUPPORTED_FORMATS, align 4
  %31 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %32 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %14, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @patch_simple_hdmi(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
