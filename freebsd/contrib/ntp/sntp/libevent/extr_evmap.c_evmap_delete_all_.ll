; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_delete_all_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_delete_all_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }

@evmap_signal_delete_all_iter_fn = common dso_local global i32 0, align 4
@evmap_io_delete_all_iter_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evmap_delete_all_(%struct.event_base* %0) #0 {
  %2 = alloca %struct.event_base*, align 8
  store %struct.event_base* %0, %struct.event_base** %2, align 8
  %3 = load %struct.event_base*, %struct.event_base** %2, align 8
  %4 = load i32, i32* @evmap_signal_delete_all_iter_fn, align 4
  %5 = call i32 @evmap_signal_foreach_signal(%struct.event_base* %3, i32 %4, i32* null)
  %6 = load %struct.event_base*, %struct.event_base** %2, align 8
  %7 = load i32, i32* @evmap_io_delete_all_iter_fn, align 4
  %8 = call i32 @evmap_io_foreach_fd(%struct.event_base* %6, i32 %7, i32* null)
  ret void
}

declare dso_local i32 @evmap_signal_foreach_signal(%struct.event_base*, i32, i32*) #1

declare dso_local i32 @evmap_io_foreach_fd(%struct.event_base*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
