; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_eq_debug_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_eq_debug_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_debug_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_debug_entry*, %struct.event_debug_entry*)* @eq_debug_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eq_debug_entry(%struct.event_debug_entry* %0, %struct.event_debug_entry* %1) #0 {
  %3 = alloca %struct.event_debug_entry*, align 8
  %4 = alloca %struct.event_debug_entry*, align 8
  store %struct.event_debug_entry* %0, %struct.event_debug_entry** %3, align 8
  store %struct.event_debug_entry* %1, %struct.event_debug_entry** %4, align 8
  %5 = load %struct.event_debug_entry*, %struct.event_debug_entry** %3, align 8
  %6 = getelementptr inbounds %struct.event_debug_entry, %struct.event_debug_entry* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.event_debug_entry*, %struct.event_debug_entry** %4, align 8
  %9 = getelementptr inbounds %struct.event_debug_entry, %struct.event_debug_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
