; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_dns.c_gaic_launch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_dns.c_gaic_launch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.event_base = type { i32 }
%struct.evdns_base = type { i32 }
%struct.gaic_request_status = type { i32, i32, %struct.evdns_base*, %struct.event_base*, i32 }

@__const.gaic_launch.tv = private unnamed_addr constant %struct.timeval { i32 0, i32 10000 }, align 4
@GAIC_MAGIC = common dso_local global i32 0, align 4
@gaic_cancel_request_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"foobar.bazquux.example.com\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@gaic_getaddrinfo_cb = common dso_local global i32 0, align 4
@pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_base*, %struct.evdns_base*)* @gaic_launch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gaic_launch(%struct.event_base* %0, %struct.evdns_base* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.evdns_base*, align 8
  %5 = alloca %struct.gaic_request_status*, align 8
  %6 = alloca %struct.timeval, align 4
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.evdns_base* %1, %struct.evdns_base** %4, align 8
  %7 = call %struct.gaic_request_status* @calloc(i32 1, i32 32)
  store %struct.gaic_request_status* %7, %struct.gaic_request_status** %5, align 8
  %8 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %9 = call i32 @tt_assert(%struct.gaic_request_status* %8)
  %10 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.timeval* @__const.gaic_launch.tv to i8*), i64 8, i1 false)
  %11 = load i32, i32* @GAIC_MAGIC, align 4
  %12 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %13 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.event_base*, %struct.event_base** %3, align 8
  %15 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %16 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %15, i32 0, i32 3
  store %struct.event_base* %14, %struct.event_base** %16, align 8
  %17 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %18 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %19 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %18, i32 0, i32 2
  store %struct.evdns_base* %17, %struct.evdns_base** %19, align 8
  %20 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %21 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %20, i32 0, i32 0
  %22 = load %struct.event_base*, %struct.event_base** %3, align 8
  %23 = load i32, i32* @gaic_cancel_request_cb, align 4
  %24 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %25 = call i32 @event_assign(i32* %21, %struct.event_base* %22, i32 -1, i32 0, i32 %23, %struct.gaic_request_status* %24)
  %26 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %27 = load i32, i32* @gaic_getaddrinfo_cb, align 4
  %28 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %29 = call i32 @evdns_getaddrinfo(%struct.evdns_base* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %27, %struct.gaic_request_status* %28)
  %30 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %31 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.gaic_request_status*, %struct.gaic_request_status** %5, align 8
  %33 = getelementptr inbounds %struct.gaic_request_status, %struct.gaic_request_status* %32, i32 0, i32 0
  %34 = call i32 @event_add(i32* %33, %struct.timeval* %6)
  %35 = load i32, i32* @pending, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @pending, align 4
  ret void
}

declare dso_local %struct.gaic_request_status* @calloc(i32, i32) #1

declare dso_local i32 @tt_assert(%struct.gaic_request_status*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @event_assign(i32*, %struct.event_base*, i32, i32, i32, %struct.gaic_request_status*) #1

declare dso_local i32 @evdns_getaddrinfo(%struct.evdns_base*, i8*, i8*, i32*, i32, %struct.gaic_request_status*) #1

declare dso_local i32 @event_add(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
