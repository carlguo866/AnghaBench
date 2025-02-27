; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_terminate_chunked_test_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_terminate_chunked_test_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.bufferevent = type { i32 }
%struct.timeval = type { i32 }
%struct.terminate_state = type { i64, i32, %struct.bufferevent*, i64, i32 }
%struct.evhttp = type { i32 }

@test_ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@terminate_chunked_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@terminate_readcb = common dso_local global i32 0, align 4
@http_writecb = common dso_local global i32 0, align 4
@http_errorcb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"GET /test HTTP/1.1\0D\0AHost: some\0D\0A\0D\0A\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@terminate_chunked_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @http_terminate_chunked_test_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_terminate_chunked_test_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.terminate_state, align 8
  %12 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.basic_test_data*
  store %struct.basic_test_data* %14, %struct.basic_test_data** %5, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %6, align 8
  store i32 0, i32* %9, align 4
  store i64 -1, i64* %10, align 8
  %15 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %16 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.evhttp* @http_setup(i32* %9, i32 %17, i32 0)
  store %struct.evhttp* %18, %struct.evhttp** %12, align 8
  store i64 0, i64* @test_ok, align 8
  %19 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %20 = call i32 @evhttp_del_cb(%struct.evhttp* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %22 = load i32, i32* @terminate_chunked_cb, align 4
  %23 = call i64 @evhttp_set_cb(%struct.evhttp* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.terminate_state* %11)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @tt_assert(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %30 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %10, align 8
  %33 = call %struct.bufferevent* @bufferevent_socket_new(i32 %31, i64 %32, i32 0)
  store %struct.bufferevent* %33, %struct.bufferevent** %6, align 8
  %34 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %35 = load i32, i32* @terminate_readcb, align 4
  %36 = load i32, i32* @http_writecb, align 4
  %37 = load i32, i32* @http_errorcb, align 4
  %38 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %39 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bufferevent_setcb(%struct.bufferevent* %34, i32 %35, i32 %36, i32 %37, i32 %40)
  %42 = call i32 @memset(%struct.terminate_state* %11, i32 0, i32 40)
  %43 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %44 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 4
  store i32 %45, i32* %46, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 3
  store i64 %47, i64* %48, align 8
  %49 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %50 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 2
  store %struct.bufferevent* %49, %struct.bufferevent** %50, align 8
  %51 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %54 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @bufferevent_write(%struct.bufferevent* %54, i8* %55, i32 %57)
  %59 = call i32 @evutil_timerclear(%struct.timeval* %7)
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 10000, i32* %60, align 4
  %61 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %62 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @EV_TIMEOUT, align 4
  %65 = load i32, i32* @terminate_chunked_client, align 4
  %66 = call i32 @event_base_once(i32 %63, i32 -1, i32 %64, i32 %65, %struct.terminate_state* %11, %struct.timeval* %7)
  %67 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %68 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @event_base_dispatch(i32 %69)
  %71 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %2
  store i64 0, i64* @test_ok, align 8
  br label %75

75:                                               ; preds = %74, %2
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %10, align 8
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @evutil_closesocket(i64 %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %84 = icmp ne %struct.evhttp* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %87 = call i32 @evhttp_free(%struct.evhttp* %86)
  br label %88

88:                                               ; preds = %85, %82
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local i32 @evhttp_del_cb(%struct.evhttp*, i8*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i64 @evhttp_set_cb(%struct.evhttp*, i8*, i32, %struct.terminate_state*) #1

declare dso_local i64 @http_connect(i8*, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_socket_new(i32, i64, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.terminate_state*, i32, i32) #1

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_base_once(i32, i32, i32, i32, %struct.terminate_state*, %struct.timeval*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
