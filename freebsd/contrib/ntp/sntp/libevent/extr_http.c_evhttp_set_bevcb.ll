; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_set_bevcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_set_bevcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { %struct.bufferevent* (%struct.event_base*, i8*)*, i8* }
%struct.bufferevent = type opaque
%struct.event_base = type opaque
%struct.event_base.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_set_bevcb(%struct.evhttp* %0, %struct.bufferevent* (%struct.event_base.0*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.evhttp*, align 8
  %5 = alloca %struct.bufferevent* (%struct.event_base.0*, i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.evhttp* %0, %struct.evhttp** %4, align 8
  store %struct.bufferevent* (%struct.event_base.0*, i8*)* %1, %struct.bufferevent* (%struct.event_base.0*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.bufferevent* (%struct.event_base.0*, i8*)*, %struct.bufferevent* (%struct.event_base.0*, i8*)** %5, align 8
  %8 = bitcast %struct.bufferevent* (%struct.event_base.0*, i8*)* %7 to %struct.bufferevent* (%struct.event_base*, i8*)*
  %9 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %10 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %9, i32 0, i32 0
  store %struct.bufferevent* (%struct.event_base*, i8*)* %8, %struct.bufferevent* (%struct.event_base*, i8*)** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %13 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
