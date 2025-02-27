; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_player.c_play_and_wait.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_player.c_play_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libvlc_MediaPlayerPlaying = common dso_local global i32 0, align 4
@on_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Waiting for playing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @play_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @play_and_wait(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @libvlc_media_player_event_manager(i32* %6)
  store i32* %7, i32** %3, align 8
  %8 = call i32 @vlc_sem_init(i32* %4, i32 0)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @libvlc_MediaPlayerPlaying, align 4
  %11 = load i32, i32* @on_event, align 4
  %12 = call i32 @libvlc_event_attach(i32* %9, i32 %10, i32 %11, i32* %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @libvlc_media_player_play(i32* %18)
  %20 = call i32 @test_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @vlc_sem_wait(i32* %4)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @libvlc_MediaPlayerPlaying, align 4
  %24 = load i32, i32* @on_event, align 4
  %25 = call i32 @libvlc_event_detach(i32* %22, i32 %23, i32 %24, i32* %4)
  %26 = call i32 @vlc_sem_destroy(i32* %4)
  ret void
}

declare dso_local i32* @libvlc_media_player_event_manager(i32*) #1

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i32 @libvlc_event_attach(i32*, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @libvlc_media_player_play(i32*) #1

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32 @libvlc_event_detach(i32*, i32, i32, i32*) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
