; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_thread_wrapper.c_thread_set_aspect_ratio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_thread_wrapper.c_thread_set_aspect_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@CMD_POKE_SET_ASPECT_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @thread_set_aspect_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_set_aspect_ratio(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* @CMD_POKE_SET_ASPECT_RATIO, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @video_thread_send_and_wait_user_to_thread(i32* %20, %struct.TYPE_5__* %6)
  br label %22

22:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @video_thread_send_and_wait_user_to_thread(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
