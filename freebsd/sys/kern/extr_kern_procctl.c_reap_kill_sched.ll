; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_reap_kill_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_reap_kill_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reap_kill_tracker_head = type { i32 }
%struct.proc = type { i32 }
%struct.reap_kill_tracker = type { %struct.proc* }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reap_kill_tracker_head*, %struct.proc*)* @reap_kill_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reap_kill_sched(%struct.reap_kill_tracker_head* %0, %struct.proc* %1) #0 {
  %3 = alloca %struct.reap_kill_tracker_head*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.reap_kill_tracker*, align 8
  store %struct.reap_kill_tracker_head* %0, %struct.reap_kill_tracker_head** %3, align 8
  store %struct.proc* %1, %struct.proc** %4, align 8
  %6 = load i32, i32* @M_TEMP, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call %struct.reap_kill_tracker* @malloc(i32 8, i32 %6, i32 %7)
  store %struct.reap_kill_tracker* %8, %struct.reap_kill_tracker** %5, align 8
  %9 = load %struct.proc*, %struct.proc** %4, align 8
  %10 = load %struct.reap_kill_tracker*, %struct.reap_kill_tracker** %5, align 8
  %11 = getelementptr inbounds %struct.reap_kill_tracker, %struct.reap_kill_tracker* %10, i32 0, i32 0
  store %struct.proc* %9, %struct.proc** %11, align 8
  %12 = load %struct.reap_kill_tracker_head*, %struct.reap_kill_tracker_head** %3, align 8
  %13 = load %struct.reap_kill_tracker*, %struct.reap_kill_tracker** %5, align 8
  %14 = load i32, i32* @link, align 4
  %15 = call i32 @TAILQ_INSERT_TAIL(%struct.reap_kill_tracker_head* %12, %struct.reap_kill_tracker* %13, i32 %14)
  ret void
}

declare dso_local %struct.reap_kill_tracker* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.reap_kill_tracker_head*, %struct.reap_kill_tracker*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
