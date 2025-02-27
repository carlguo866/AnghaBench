; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_on_orderly_shutdown.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_on_orderly_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signalfd_siginfo = type { i32 }

@arg_kill_signal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Trying to halt container. Send SIGTERM again to trigger immediate termination.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.signalfd_siginfo*, i8*)* @on_orderly_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_orderly_shutdown(i32* %0, %struct.signalfd_siginfo* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.signalfd_siginfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.signalfd_siginfo* %1, %struct.signalfd_siginfo** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i64 @PTR_TO_PID(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* @arg_kill_signal, align 4
  %16 = call i64 @kill(i64 %14, i32 %15)
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 @log_info(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @sd_event_source_set_userdata(i32* %20, i32* null)
  store i32 0, i32* %4, align 4
  br label %27

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @sd_event_source_get_event(i32* %24)
  %26 = call i32 @sd_event_exit(i32 %25, i32 0)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @PTR_TO_PID(i8*) #1

declare dso_local i64 @kill(i64, i32) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @sd_event_source_set_userdata(i32*, i32*) #1

declare dso_local i32 @sd_event_exit(i32, i32) #1

declare dso_local i32 @sd_event_source_get_event(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
