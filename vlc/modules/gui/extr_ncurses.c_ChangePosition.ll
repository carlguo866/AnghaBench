; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_ChangePosition.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_ChangePosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_PLAYER_STATE_PLAYING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float)* @ChangePosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ChangePosition(i32* %0, float %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store float %1, float* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @vlc_player_Lock(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @vlc_player_GetState(i32* %7)
  %9 = load i64, i64* @VLC_PLAYER_STATE_PLAYING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load float, float* %4, align 4
  %14 = call i32 @vlc_player_JumpPos(i32* %12, float %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @vlc_player_Unlock(i32* %16)
  ret void
}

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i64 @vlc_player_GetState(i32*) #1

declare dso_local i32 @vlc_player_JumpPos(i32*, float) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
