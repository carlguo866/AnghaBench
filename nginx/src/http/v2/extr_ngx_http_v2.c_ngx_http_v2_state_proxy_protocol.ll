; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_proxy_protocol.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_proxy_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c"reading PROXY protocol\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"processing HTTP/2 connection\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32*, i32*)* @ngx_http_v2_state_proxy_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_proxy_protocol(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @ngx_proxy_protocol_read(%struct.TYPE_9__* %18, i32* %19, i32* %20)
  store i32* %21, i32** %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %29 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_8__* %27, i32 %28)
  store i32* %29, i32** %4, align 8
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32* @ngx_http_v2_state_preface(%struct.TYPE_8__* %31, i32* %32, i32* %33)
  store i32* %34, i32** %4, align 8
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32*, i32** %4, align 8
  ret i32* %36
}

declare dso_local i32* @ngx_proxy_protocol_read(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @ngx_http_v2_state_preface(%struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
