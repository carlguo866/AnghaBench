; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_interval.h_event_timeout_remaining.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_interval.h_event_timeout_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_timeout = type { i64, i64 }

@now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_timeout*)* @event_timeout_remaining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_timeout_remaining(%struct.event_timeout* %0) #0 {
  %2 = alloca %struct.event_timeout*, align 8
  store %struct.event_timeout* %0, %struct.event_timeout** %2, align 8
  %3 = load %struct.event_timeout*, %struct.event_timeout** %2, align 8
  %4 = getelementptr inbounds %struct.event_timeout, %struct.event_timeout* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @now, align 8
  %7 = sub nsw i64 %5, %6
  %8 = load %struct.event_timeout*, %struct.event_timeout** %2, align 8
  %9 = getelementptr inbounds %struct.event_timeout, %struct.event_timeout* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
