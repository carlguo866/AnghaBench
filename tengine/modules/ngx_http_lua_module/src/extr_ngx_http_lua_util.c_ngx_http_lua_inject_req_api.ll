; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_inject_req_api.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_inject_req_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"req\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_inject_req_api(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @lua_createtable(i32* %5, i32 0, i32 24)
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @ngx_http_lua_inject_req_header_api(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @ngx_http_lua_inject_req_uri_api(i32* %9, i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ngx_http_lua_inject_req_args_api(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ngx_http_lua_inject_req_body_api(i32* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ngx_http_lua_inject_req_socket_api(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ngx_http_lua_inject_req_method_api(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ngx_http_lua_inject_req_time_api(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ngx_http_lua_inject_req_misc_api(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @lua_setfield(i32* %24, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @ngx_http_lua_inject_req_header_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_req_uri_api(i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_inject_req_args_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_req_body_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_req_socket_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_req_method_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_req_time_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_req_misc_api(i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
