; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_time.c_ngx_http_lua_ffi_localtime.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_time.c_ngx_http_lua_ffi_localtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@ngx_cached_time = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"%04d-%02d-%02d %02d:%02d:%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_ffi_localtime(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i64 (...) @ngx_time()
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ngx_cached_time, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %7, 60
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %4, %9
  %11 = call i32 @ngx_gmtime(i64 %10, %struct.TYPE_4__* %3)
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ngx_sprintf(i32* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24)
  ret void
}

declare dso_local i32 @ngx_gmtime(i64, %struct.TYPE_4__*) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
