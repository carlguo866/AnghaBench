; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_recsrc1_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_recsrc1_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { i32 }
%struct.snd_mixer_oss_slot = type { i64 }
%struct.slot = type { i32* }

@SNDRV_MIXER_OSS_ITEM_CROUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32)* @snd_mixer_oss_put_recsrc1_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_put_recsrc1_route(%struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_slot* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_mixer_oss_file*, align 8
  %5 = alloca %struct.snd_mixer_oss_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.slot*, align 8
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %4, align 8
  store %struct.snd_mixer_oss_slot* %1, %struct.snd_mixer_oss_slot** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %5, align 8
  %9 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.slot*
  store %struct.slot* %11, %struct.slot** %7, align 8
  %12 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %13 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %5, align 8
  %14 = load %struct.slot*, %struct.slot** %7, align 8
  %15 = getelementptr inbounds %struct.slot, %struct.slot* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CROUTE, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %12, %struct.snd_mixer_oss_slot* %13, i32 %19, i32 %20, i32 %21, i32 1)
  ret i32 0
}

declare dso_local i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
