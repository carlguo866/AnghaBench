; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_haveevents.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_haveevents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*)* @event_haveevents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_haveevents(%struct.event_base* %0) #0 {
  %2 = alloca %struct.event_base*, align 8
  store %struct.event_base* %0, %struct.event_base** %2, align 8
  %3 = load %struct.event_base*, %struct.event_base** %2, align 8
  %4 = getelementptr inbounds %struct.event_base, %struct.event_base* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.event_base*, %struct.event_base** %2, align 8
  %9 = getelementptr inbounds %struct.event_base, %struct.event_base* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ true, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
