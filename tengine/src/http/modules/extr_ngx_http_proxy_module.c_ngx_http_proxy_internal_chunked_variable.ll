; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_internal_chunked_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_internal_chunked_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i64 }
%struct.TYPE_6__ = type { i32 }

@ngx_http_proxy_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i64)* @ngx_http_proxy_internal_chunked_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_proxy_internal_chunked_variable(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @ngx_http_proxy_module, align 4
  %11 = call %struct.TYPE_6__* @ngx_http_get_module_ctx(i32* %9, i32 %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14, %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @NGX_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %35

23:                                               ; preds = %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  store i32* bitcast ([8 x i8]* @.str to i32*), i32** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 7, i32* %33, align 8
  %34 = load i32, i32* @NGX_OK, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %23, %19
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_6__* @ngx_http_get_module_ctx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
