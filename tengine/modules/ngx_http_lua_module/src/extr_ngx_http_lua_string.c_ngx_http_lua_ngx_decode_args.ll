; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_decode_args.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_decode_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"expecting 1 or 2 arguments but seen %d\00", align 1
@NGX_HTTP_LUA_MAX_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_decode_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_decode_args(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %13, %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @luaL_checklstring(i32* %21, i32 1, i64* %6)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @luaL_checkint(i32* %27, i32 2)
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_pop(i32* %29, i32 1)
  br label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @NGX_HTTP_LUA_MAX_ARGS, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32* @lua_newuserdata(i32* %34, i64 %35)
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @ngx_memcpy(i32* %37, i32* %38, i64 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lua_createtable(i32* %41, i32 0, i32 4)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ngx_http_lua_parse_args(i32* %43, i32* %44, i32* %47, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %33, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32* @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @ngx_http_lua_parse_args(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
