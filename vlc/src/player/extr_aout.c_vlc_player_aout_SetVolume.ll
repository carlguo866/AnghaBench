; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_aout.c_vlc_player_aout_SetVolume.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_aout.c_vlc_player_aout_SetVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_aout_SetVolume(i32* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store float %1, float* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @vlc_player_aout_Hold(i32* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = load float, float* %5, align 4
  %16 = call i32 @aout_VolumeSet(i32* %14, float %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @aout_Release(i32* %17)
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32* @vlc_player_aout_Hold(i32*) #1

declare dso_local i32 @aout_VolumeSet(i32*, float) #1

declare dso_local i32 @aout_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
