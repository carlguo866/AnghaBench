; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headerfilterby.c_ngx_http_lua_header_filter_inline.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headerfilterby.c_ngx_http_lua_header_filter_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"=header_filter_by_lua\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"calling header filter by chunk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_header_filter_inline(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = load i32, i32* @ngx_http_lua_module, align 4
  %9 = call %struct.TYPE_15__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__* %7, i32 %8)
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_14__* %10, i32* null)
  store i32* %11, i32** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ngx_http_lua_cache_loadbuffer(i32 %16, i32* %17, i32 %22, i32 %27, i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @NGX_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i64, i64* @NGX_ERROR, align 8
  store i64 %36, i64* %2, align 8
  br label %42

37:                                               ; preds = %1
  %38 = call i32 @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = call i64 @ngx_http_lua_header_filter_by_chunk(i32* %39, %struct.TYPE_14__* %40)
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %37, %35
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @ngx_http_lua_cache_loadbuffer(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @dd(i8*) #1

declare dso_local i64 @ngx_http_lua_header_filter_by_chunk(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
