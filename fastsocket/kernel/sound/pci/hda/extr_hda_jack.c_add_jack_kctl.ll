; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_add_jack_kctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_add_jack_kctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.auto_pin_cfg = type { i32 }

@AC_JACK_PORT_NONE = common dso_local global i32 0, align 4
@AC_JACK_PORT_COMPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c" Phantom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, %struct.auto_pin_cfg*, i8*)* @add_jack_kctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_jack_kctl(%struct.hda_codec* %0, i32 %1, %struct.auto_pin_cfg* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.auto_pin_cfg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [44 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.auto_pin_cfg* %2, %struct.auto_pin_cfg** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

19:                                               ; preds = %4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @get_defcfg_connect(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @AC_JACK_PORT_NONE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %89

29:                                               ; preds = %19
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @AC_JACK_PORT_COMPLEX, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @is_jack_detectable(%struct.hda_codec* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i1 [ true, %29 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds [44 x i8], [44 x i8]* %12, i64 0, i64 0
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strlcpy(i8* %45, i8* %46, i32 44)
  store i32 0, i32* %13, align 4
  br label %54

48:                                               ; preds = %39
  %49 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %52 = getelementptr inbounds [44 x i8], [44 x i8]* %12, i64 0, i64 0
  %53 = call i32 @snd_hda_get_pin_label(%struct.hda_codec* %49, i32 %50, %struct.auto_pin_cfg* %51, i8* %52, i32 44, i32* %13)
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = getelementptr inbounds [44 x i8], [44 x i8]* %12, i64 0, i64 0
  %59 = getelementptr inbounds [44 x i8], [44 x i8]* %12, i64 0, i64 0
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = sub i64 44, %61
  %63 = sub i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i32 @strncat(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %57, %54
  %67 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %68 = getelementptr inbounds [44 x i8], [44 x i8]* %12, i64 0, i64 0
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @get_unique_index(%struct.hda_codec* %67, i8* %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = getelementptr inbounds [44 x i8], [44 x i8]* %12, i64 0, i64 0
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @__snd_hda_jack_add_kctl(%struct.hda_codec* %71, i32 %72, i8* %73, i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %5, align 4
  br label %89

81:                                               ; preds = %66
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @snd_hda_jack_detect_enable(%struct.hda_codec* %85, i32 %86, i32 0)
  store i32 %87, i32* %5, align 4
  br label %89

88:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %84, %79, %28, %18
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_defcfg_connect(i32) #1

declare dso_local i32 @is_jack_detectable(%struct.hda_codec*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snd_hda_get_pin_label(%struct.hda_codec*, i32, %struct.auto_pin_cfg*, i8*, i32, i32*) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_unique_index(%struct.hda_codec*, i8*, i32) #1

declare dso_local i32 @__snd_hda_jack_add_kctl(%struct.hda_codec*, i32, i8*, i32, i32) #1

declare dso_local i32 @snd_hda_jack_detect_enable(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
