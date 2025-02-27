; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_jack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { i32 }
%struct.TYPE_2__ = type { i32 }

@__const.generic_hdmi_build_jack.hdmi_str = private unnamed_addr constant [32 x i8] c"HDMI/DP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [8 x i8] c",pcm=%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" Phantom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @generic_hdmi_build_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_hdmi_build_jack(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca %struct.hdmi_spec_per_pin*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast [32 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.generic_hdmi_build_jack.hdmi_str, i32 0, i32 0), i64 32, i1 false)
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hdmi_spec*, %struct.hdmi_spec** %11, align 8
  store %struct.hdmi_spec* %12, %struct.hdmi_spec** %6, align 8
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %13, i32 %14)
  store %struct.hdmi_spec_per_pin* %15, %struct.hdmi_spec_per_pin** %7, align 8
  %16 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.TYPE_2__* @get_pcm_rec(%struct.hdmi_spec* %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %23, %2
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %34 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @is_jack_detectable(%struct.hda_codec* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %41 = call i32 @strlen(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = sub i64 32, %42
  %44 = sub i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 @strncat(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %38, %31
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %50 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %53 = call i32 @snd_hda_jack_add_kctl(%struct.hda_codec* %48, i32 %51, i8* %52, i32 0)
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #2

declare dso_local %struct.TYPE_2__* @get_pcm_rec(%struct.hdmi_spec*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @is_jack_detectable(%struct.hda_codec*, i32) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @snd_hda_jack_add_kctl(%struct.hda_codec*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
