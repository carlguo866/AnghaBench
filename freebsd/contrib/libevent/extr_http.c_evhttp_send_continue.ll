; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_send_continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_send_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32*, i32 }
%struct.evhttp_request = type { i32, i32 }

@EV_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"HTTP/%d.%d 100 Continue\0D\0A\0D\0A\00", align 1
@evhttp_send_continue_done = common dso_local global i32 0, align 4
@evhttp_read_cb = common dso_local global i32 0, align 4
@evhttp_write_cb = common dso_local global i32 0, align 4
@evhttp_error_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_send_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_send_continue(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %5 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %6 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @EV_WRITE, align 4
  %9 = call i32 @bufferevent_enable(i32 %7, i32 %8)
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %11 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @bufferevent_get_output(i32 %12)
  %14 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %15 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %18 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @evbuffer_add_printf(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @evhttp_send_continue_done, align 4
  %22 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %23 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %25 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %27 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @evhttp_read_cb, align 4
  %30 = load i32, i32* @evhttp_write_cb, align 4
  %31 = load i32, i32* @evhttp_error_cb, align 4
  %32 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %33 = call i32 @bufferevent_setcb(i32 %28, i32 %29, i32 %30, i32 %31, %struct.evhttp_connection* %32)
  ret void
}

declare dso_local i32 @bufferevent_enable(i32, i32) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @bufferevent_get_output(i32) #1

declare dso_local i32 @bufferevent_setcb(i32, i32, i32, i32, %struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
