; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_bev_async_set_wsa_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_bev_async_set_wsa_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.event_overlapped = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, %struct.event_overlapped*)* @bev_async_set_wsa_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bev_async_set_wsa_error(%struct.bufferevent* %0, %struct.event_overlapped* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca %struct.event_overlapped*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store %struct.event_overlapped* %1, %struct.event_overlapped** %4, align 8
  %8 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %9 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @evbuffer_overlapped_get_fd_(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.event_overlapped*, %struct.event_overlapped** %4, align 8
  %14 = getelementptr inbounds %struct.event_overlapped, %struct.event_overlapped* %13, i32 0, i32 0
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @WSAGetOverlappedResult(i32 %12, i32* %14, i32* %5, i32 %15, i32* %6)
  ret void
}

declare dso_local i32 @evbuffer_overlapped_get_fd_(i32) #1

declare dso_local i32 @WSAGetOverlappedResult(i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
