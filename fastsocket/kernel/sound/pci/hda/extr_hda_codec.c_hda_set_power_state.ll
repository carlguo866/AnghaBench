; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_hda_set_power_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_hda_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.hda_codec.0*, i64, i32)* }
%struct.hda_codec.0 = type opaque

@AC_PWRST_D3 = common dso_local global i32 0, align 4
@HDA_RW_NO_RESPONSE_FALLBACK = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@AC_PWRST_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @hda_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_set_power_state(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i64 [ %16, %13 ], [ %20, %17 ]
  store i64 %22, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @AC_PWRST_D3, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 10, i32 100
  %33 = call i32 @msleep(i32 %32)
  %34 = load i32, i32* @HDA_RW_NO_RESPONSE_FALLBACK, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %26, %21
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %77, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.hda_codec.0*, i64, i32)*, i32 (%struct.hda_codec.0*, i64, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.hda_codec.0*, i64, i32)* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %47 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.hda_codec.0*, i64, i32)*, i32 (%struct.hda_codec.0*, i64, i32)** %48, align 8
  %50 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %51 = bitcast %struct.hda_codec* %50 to %struct.hda_codec.0*
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 %49(%struct.hda_codec.0* %51, i64 %52, i32 %53)
  br label %66

55:                                               ; preds = %39
  %56 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @snd_hda_codec_read(%struct.hda_codec* %56, i64 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @snd_hda_codec_set_power_to_all(%struct.hda_codec* %62, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %55, %45
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @hda_sync_power_state(%struct.hda_codec* %67, i64 %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @AC_PWRST_ERROR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  br label %80

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %36

80:                                               ; preds = %75, %36
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i64, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_set_power_to_all(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @hda_sync_power_state(%struct.hda_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
