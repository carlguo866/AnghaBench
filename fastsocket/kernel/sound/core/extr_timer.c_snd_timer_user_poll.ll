; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_user_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_user_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_timer_user* }
%struct.snd_timer_user = type { i64, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @snd_timer_user_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_user_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_timer_user*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.snd_timer_user*, %struct.snd_timer_user** %8, align 8
  store %struct.snd_timer_user* %9, %struct.snd_timer_user** %6, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = load %struct.snd_timer_user*, %struct.snd_timer_user** %6, align 8
  %12 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %11, i32 0, i32 1
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @poll_wait(%struct.file* %10, i32* %12, i32* %13)
  store i32 0, i32* %5, align 4
  %15 = load %struct.snd_timer_user*, %struct.snd_timer_user** %6, align 8
  %16 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @POLLIN, align 4
  %21 = load i32, i32* @POLLRDNORM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
