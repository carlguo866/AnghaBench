; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_async.c_bufferevent_async_can_connect_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_async.c_bufferevent_async_can_connect_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.win32_extension_fns = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_async_can_connect_(%struct.bufferevent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca %struct.win32_extension_fns*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  %5 = call %struct.win32_extension_fns* (...) @event_get_win32_extension_fns_()
  store %struct.win32_extension_fns* %5, %struct.win32_extension_fns** %4, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = call i64 @BEV_IS_ASYNC(%struct.bufferevent* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %11 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @event_base_get_iocp_(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.win32_extension_fns*, %struct.win32_extension_fns** %4, align 8
  %17 = icmp ne %struct.win32_extension_fns* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.win32_extension_fns*, %struct.win32_extension_fns** %4, align 8
  %20 = getelementptr inbounds %struct.win32_extension_fns, %struct.win32_extension_fns* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %18, %15, %9, %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.win32_extension_fns* @event_get_win32_extension_fns_(...) #1

declare dso_local i64 @BEV_IS_ASYNC(%struct.bufferevent*) #1

declare dso_local i64 @event_base_get_iocp_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
