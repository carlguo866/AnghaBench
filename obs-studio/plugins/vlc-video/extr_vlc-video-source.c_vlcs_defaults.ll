; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_defaults.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_LOOP = common dso_local global i32 0, align 4
@S_SHUFFLE = common dso_local global i32 0, align 4
@S_BEHAVIOR = common dso_local global i32 0, align 4
@S_BEHAVIOR_STOP_RESTART = common dso_local global i32 0, align 4
@S_NETWORK_CACHING = common dso_local global i32 0, align 4
@S_TRACK = common dso_local global i32 0, align 4
@S_SUBTITLE_ENABLE = common dso_local global i32 0, align 4
@S_SUBTITLE_TRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vlcs_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlcs_defaults(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @S_LOOP, align 4
  %5 = call i32 @obs_data_set_default_bool(i32* %3, i32 %4, i32 1)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @S_SHUFFLE, align 4
  %8 = call i32 @obs_data_set_default_bool(i32* %6, i32 %7, i32 0)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @S_BEHAVIOR, align 4
  %11 = load i32, i32* @S_BEHAVIOR_STOP_RESTART, align 4
  %12 = call i32 @obs_data_set_default_string(i32* %9, i32 %10, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @S_NETWORK_CACHING, align 4
  %15 = call i32 @obs_data_set_default_int(i32* %13, i32 %14, i32 400)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @S_TRACK, align 4
  %18 = call i32 @obs_data_set_default_int(i32* %16, i32 %17, i32 1)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @S_SUBTITLE_ENABLE, align 4
  %21 = call i32 @obs_data_set_default_bool(i32* %19, i32 %20, i32 0)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @S_SUBTITLE_TRACK, align 4
  %24 = call i32 @obs_data_set_default_int(i32* %22, i32 %23, i32 1)
  ret void
}

declare dso_local i32 @obs_data_set_default_bool(i32*, i32, i32) #1

declare dso_local i32 @obs_data_set_default_string(i32*, i32, i32) #1

declare dso_local i32 @obs_data_set_default_int(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
