; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_priority_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_priority_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_priority_set(%struct.bufferevent* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %7 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %6, i32 0, i32 1
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @event_priority_set(i32* %7, i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @event_priority_set(i32* %14, i32 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @event_priority_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
