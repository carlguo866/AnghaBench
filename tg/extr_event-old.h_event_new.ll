; ModuleID = '/home/carl/AnghaBench/tg/extr_event-old.h_event_new.c'
source_filename = "/home/carl/AnghaBench/tg/extr_event-old.h_event_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.event_base = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event* (%struct.event_base*, i32, i32, void (i32, i16, i8*)*, i8*)* @event_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event* @event_new(%struct.event_base* %0, i32 %1, i32 %2, void (i32, i16, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (i32, i16, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.event*, align 8
  store %struct.event_base* %0, %struct.event_base** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store void (i32, i16, i8*)* %3, void (i32, i16, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = call %struct.event* @malloc(i32 4)
  store %struct.event* %12, %struct.event** %11, align 8
  %13 = load %struct.event*, %struct.event** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @event_set(%struct.event* %13, i32 %14, i32 %15, void (i32, i16, i8*)* %16, i8* %17)
  %19 = load %struct.event_base*, %struct.event_base** %6, align 8
  %20 = load %struct.event*, %struct.event** %11, align 8
  %21 = call i32 @event_base_set(%struct.event_base* %19, %struct.event* %20)
  %22 = load %struct.event*, %struct.event** %11, align 8
  ret %struct.event* %22
}

declare dso_local %struct.event* @malloc(i32) #1

declare dso_local i32 @event_set(%struct.event*, i32, i32, void (i32, i16, i8*)*, i8*) #1

declare dso_local i32 @event_base_set(%struct.event_base*, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
