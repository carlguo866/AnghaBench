; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_program_Dup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_program_Dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_program = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_player_program* @vlc_player_program_Dup(%struct.vlc_player_program* %0) #0 {
  %2 = alloca %struct.vlc_player_program*, align 8
  %3 = alloca %struct.vlc_player_program*, align 8
  %4 = alloca %struct.vlc_player_program*, align 8
  store %struct.vlc_player_program* %0, %struct.vlc_player_program** %3, align 8
  %5 = load %struct.vlc_player_program*, %struct.vlc_player_program** %3, align 8
  %6 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.vlc_player_program*, %struct.vlc_player_program** %3, align 8
  %9 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.vlc_player_program* @vlc_player_program_New(i32 %7, i32 %10)
  store %struct.vlc_player_program* %11, %struct.vlc_player_program** %4, align 8
  %12 = load %struct.vlc_player_program*, %struct.vlc_player_program** %4, align 8
  %13 = icmp ne %struct.vlc_player_program* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.vlc_player_program* null, %struct.vlc_player_program** %2, align 8
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.vlc_player_program*, %struct.vlc_player_program** %3, align 8
  %17 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vlc_player_program*, %struct.vlc_player_program** %4, align 8
  %20 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vlc_player_program*, %struct.vlc_player_program** %3, align 8
  %22 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vlc_player_program*, %struct.vlc_player_program** %4, align 8
  %25 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vlc_player_program*, %struct.vlc_player_program** %4, align 8
  store %struct.vlc_player_program* %26, %struct.vlc_player_program** %2, align 8
  br label %27

27:                                               ; preds = %15, %14
  %28 = load %struct.vlc_player_program*, %struct.vlc_player_program** %2, align 8
  ret %struct.vlc_player_program* %28
}

declare dso_local %struct.vlc_player_program* @vlc_player_program_New(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
