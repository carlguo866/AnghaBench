; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_connection_base_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_connection_base_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.event_base = type { i32 }
%struct.evdns_base = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evhttp_connection* @evhttp_connection_base_new(%struct.event_base* %0, %struct.evdns_base* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca %struct.evdns_base*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store %struct.evdns_base* %1, %struct.evdns_base** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.event_base*, %struct.event_base** %5, align 8
  %10 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.evhttp_connection* @evhttp_connection_base_bufferevent_new(%struct.event_base* %9, %struct.evdns_base* %10, i32* null, i8* %11, i32 %12)
  ret %struct.evhttp_connection* %13
}

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_bufferevent_new(%struct.event_base*, %struct.evdns_base*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
