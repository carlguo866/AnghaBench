; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_variables.c_ngx_stream_variable_time_local.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_variables.c_ngx_stream_variable_time_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i64, i64, i32 }

@ngx_cached_http_log_time = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i64)* @ngx_stream_variable_time_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_variable_time_local(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ngx_cached_http_log_time, i32 0, i32 0), align 4
  %15 = call i32* @ngx_pnalloc(i32 %13, i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @NGX_ERROR, align 4
  store i32 %19, i32* %4, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ngx_cached_http_log_time, i32 0, i32 1), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ngx_cached_http_log_time, i32 0, i32 0), align 4
  %24 = call i32 @ngx_memcpy(i32* %21, i32 %22, i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ngx_cached_http_log_time, i32 0, i32 0), align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* @NGX_OK, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %20, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
