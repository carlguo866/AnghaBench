; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_is_connection_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_is_connection_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evkeyvalq = type { i32 }

@EVHTTP_PROXY_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Proxy-Connection\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.evkeyvalq*)* @evhttp_is_connection_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evhttp_is_connection_close(i32 %0, %struct.evkeyvalq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.evkeyvalq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.evkeyvalq* %1, %struct.evkeyvalq** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EVHTTP_PROXY_REQUEST, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.evkeyvalq*, %struct.evkeyvalq** %5, align 8
  %14 = call i8* @evhttp_find_header(%struct.evkeyvalq* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @evutil_ascii_strcasecmp(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ true, %12 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.evkeyvalq*, %struct.evkeyvalq** %5, align 8
  %26 = call i8* @evhttp_find_header(%struct.evkeyvalq* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @evutil_ascii_strcasecmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ false, %24 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %21
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i8* @evhttp_find_header(%struct.evkeyvalq*, i8*) #1

declare dso_local i64 @evutil_ascii_strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
