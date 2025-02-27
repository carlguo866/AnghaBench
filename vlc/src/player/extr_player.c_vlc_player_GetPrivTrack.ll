; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetPrivTrack.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetPrivTrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track_priv = type { i32 }
%struct.vlc_player_input = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_player_track_priv* (i32*, i32*)* @vlc_player_GetPrivTrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_player_track_priv* @vlc_player_GetPrivTrack(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.vlc_player_track_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlc_player_input*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %8)
  store %struct.vlc_player_input* %9, %struct.vlc_player_input** %6, align 8
  %10 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %11 = icmp ne %struct.vlc_player_input* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.vlc_player_track_priv* null, %struct.vlc_player_track_priv** %3, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @vlc_es_id_GetCat(i32* %15)
  %17 = call i32* @vlc_player_input_GetTrackVector(%struct.vlc_player_input* %14, i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store %struct.vlc_player_track_priv* null, %struct.vlc_player_track_priv** %3, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.vlc_player_track_priv* @vlc_player_track_vector_FindById(i32* %22, i32* %23, i32* null)
  store %struct.vlc_player_track_priv* %24, %struct.vlc_player_track_priv** %3, align 8
  br label %25

25:                                               ; preds = %21, %20, %12
  %26 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %3, align 8
  ret %struct.vlc_player_track_priv* %26
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i32* @vlc_player_input_GetTrackVector(%struct.vlc_player_input*, i32) #1

declare dso_local i32 @vlc_es_id_GetCat(i32*) #1

declare dso_local %struct.vlc_player_track_priv* @vlc_player_track_vector_FindById(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
