; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_select_fallback.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_select_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"AudioEncoderFallback\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_select_fallback(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @hb_audio_encoder_get_fallback_for_passthru(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %35

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @ghb_dict_get_string(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct.TYPE_3__* @ghb_lookup_container_by_name(i8* %25)
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %8, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @ghb_settings_audio_encoder_codec(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hb_autopassthru_get_encoder(i32 %29, i32 0, i64 %30, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @hb_audio_encoder_get_fallback_for_passthru(i32) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @ghb_lookup_container_by_name(i8*) #1

declare dso_local i64 @ghb_settings_audio_encoder_codec(i32*, i8*) #1

declare dso_local i32 @hb_autopassthru_get_encoder(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
