; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_read_client_request_body_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_read_client_request_body_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @ngx_http_read_client_request_body_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_read_client_request_body_handler(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  %19 = call i32 @ngx_http_finalize_request(%struct.TYPE_9__* %17, i64 %18)
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i64 @ngx_http_do_read_client_request_body(%struct.TYPE_9__* %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @ngx_http_finalize_request(%struct.TYPE_9__* %27, i64 %28)
  br label %30

30:                                               ; preds = %12, %26, %20
  ret void
}

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @ngx_http_do_read_client_request_body(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
