; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_conn_op_ctx_cleanup.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_conn_op_ctx_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cleanup lua tcp socket conn_op_ctx: \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ngx_http_lua_socket_tcp_conn_op_ctx_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_tcp_conn_op_ctx_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %3, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = call i32 @ngx_log_debug1(i32 %10, i32 %17, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = call i32 @ngx_queue_insert_head(i32* %26, i32* %28)
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
