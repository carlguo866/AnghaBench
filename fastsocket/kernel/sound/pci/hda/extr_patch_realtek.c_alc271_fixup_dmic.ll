; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc271_fixup_dmic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc271_fixup_dmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_verb = type { i32, i32, i32 }
%struct.hda_codec = type { i32 }
%struct.hda_fixup = type { i32 }

@alc271_fixup_dmic.verbs = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i32 32, i32 129, i32 13 }, %struct.hda_verb { i32 32, i32 128, i32 16384 }, %struct.hda_verb zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"ALC271X\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ALC269VB\00", align 1
@AC_JACK_PORT_FIXED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc271_fixup_dmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc271_fixup_dmic(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @strcmp(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strcmp(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %30

20:                                               ; preds = %13, %3
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %21, i32 18)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @get_defcfg_connect(i32 %23)
  %25 = load i64, i64* @AC_JACK_PORT_FIXED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %29 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %28, %struct.hda_verb* getelementptr inbounds ([3 x %struct.hda_verb], [3 x %struct.hda_verb]* @alc271_fixup_dmic.verbs, i64 0, i64 0))
  br label %30

30:                                               ; preds = %19, %27, %20
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_defcfg_connect(i32) #1

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, %struct.hda_verb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
