; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_inject_string_api.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_inject_string_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ngx_http_lua_ngx_escape_uri = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"escape_uri\00", align 1
@ngx_http_lua_ngx_unescape_uri = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"unescape_uri\00", align 1
@ngx_http_lua_ngx_encode_args = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"encode_args\00", align 1
@ngx_http_lua_ngx_decode_args = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"decode_args\00", align 1
@ngx_http_lua_ngx_quote_sql_str = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"quote_sql_str\00", align 1
@ngx_http_lua_ngx_decode_base64 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"decode_base64\00", align 1
@ngx_http_lua_ngx_encode_base64 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"encode_base64\00", align 1
@ngx_http_lua_ngx_md5_bin = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"md5_bin\00", align 1
@ngx_http_lua_ngx_md5 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@ngx_http_lua_ngx_crc32_short = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"crc32_short\00", align 1
@ngx_http_lua_ngx_crc32_long = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"crc32_long\00", align 1
@ngx_http_lua_ngx_hmac_sha1 = common dso_local global i32 0, align 4
@ngx_http_lua_ngx_sha1_bin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_inject_string_api(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @ngx_http_lua_ngx_escape_uri, align 4
  %5 = call i32 @lua_pushcfunction(i32* %3, i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @lua_setfield(i32* %6, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @ngx_http_lua_ngx_unescape_uri, align 4
  %10 = call i32 @lua_pushcfunction(i32* %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_setfield(i32* %11, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @ngx_http_lua_ngx_encode_args, align 4
  %15 = call i32 @lua_pushcfunction(i32* %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_setfield(i32* %16, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @ngx_http_lua_ngx_decode_args, align 4
  %20 = call i32 @lua_pushcfunction(i32* %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_setfield(i32* %21, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @ngx_http_lua_ngx_quote_sql_str, align 4
  %25 = call i32 @lua_pushcfunction(i32* %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @lua_setfield(i32* %26, i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @ngx_http_lua_ngx_decode_base64, align 4
  %30 = call i32 @lua_pushcfunction(i32* %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_setfield(i32* %31, i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @ngx_http_lua_ngx_encode_base64, align 4
  %35 = call i32 @lua_pushcfunction(i32* %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @lua_setfield(i32* %36, i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @ngx_http_lua_ngx_md5_bin, align 4
  %40 = call i32 @lua_pushcfunction(i32* %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @lua_setfield(i32* %41, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @ngx_http_lua_ngx_md5, align 4
  %45 = call i32 @lua_pushcfunction(i32* %43, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @lua_setfield(i32* %46, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* @ngx_http_lua_ngx_crc32_short, align 4
  %50 = call i32 @lua_pushcfunction(i32* %48, i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @lua_setfield(i32* %51, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @ngx_http_lua_ngx_crc32_long, align 4
  %55 = call i32 @lua_pushcfunction(i32* %53, i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @lua_setfield(i32* %56, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
