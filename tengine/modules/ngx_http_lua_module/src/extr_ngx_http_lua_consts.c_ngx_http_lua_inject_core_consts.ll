; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_consts.c_ngx_http_lua_inject_core_consts.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_consts.c_ngx_http_lua_inject_core_consts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"AGAIN\00", align 1
@NGX_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DONE\00", align 1
@NGX_DECLINED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"DECLINED\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_inject_core_consts(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @NGX_OK, align 4
  %5 = call i32 @lua_pushinteger(i32* %3, i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @lua_setfield(i32* %6, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @NGX_AGAIN, align 4
  %10 = call i32 @lua_pushinteger(i32* %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_setfield(i32* %11, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @NGX_DONE, align 4
  %15 = call i32 @lua_pushinteger(i32* %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_setfield(i32* %16, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @NGX_DECLINED, align 4
  %20 = call i32 @lua_pushinteger(i32* %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_setfield(i32* %21, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @NGX_ERROR, align 4
  %25 = call i32 @lua_pushinteger(i32* %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @lua_setfield(i32* %26, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @lua_pushlightuserdata(i32* %28, i32* null)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @lua_setfield(i32* %30, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
