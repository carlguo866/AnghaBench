; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_program_Update.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_program_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_program = type { i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_program_Update(%struct.vlc_player_program* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.vlc_player_program*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.vlc_player_program* %0, %struct.vlc_player_program** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.vlc_player_program*, %struct.vlc_player_program** %4, align 8
  %8 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = call i32 @free(i8* %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32* @vlc_player_program_DupTitle(i32 %12, i8* %13)
  %15 = load %struct.vlc_player_program*, %struct.vlc_player_program** %4, align 8
  %16 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.vlc_player_program*, %struct.vlc_player_program** %4, align 8
  %18 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @VLC_SUCCESS, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @VLC_ENOMEM, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  ret i32 %26
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @vlc_player_program_DupTitle(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
