; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_init.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_LOG_PHASE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_http_reqstat_log_handler = common dso_local global i32 0, align 4
@NGX_HTTP_REWRITE_PHASE = common dso_local global i64 0, align 8
@ngx_http_reqstat_init_handler = common dso_local global i32 0, align 4
@ngx_http_top_input_body_filter = common dso_local global i32 0, align 4
@ngx_http_next_input_body_filter = common dso_local global i32 0, align 4
@ngx_http_reqstat_input_body_filter = common dso_local global i32 0, align 4
@ngx_http_reqstat_log_flow = common dso_local global i32 0, align 4
@ngx_http_write_filter_stat = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_reqstat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_reqstat_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @ngx_http_core_module, align 4
  %8 = call %struct.TYPE_5__* @ngx_http_conf_get_module_main_conf(i32* %6, i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i64, i64* @NGX_HTTP_LOG_PHASE, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32* @ngx_array_push(i32* %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @NGX_ERROR, align 4
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load i32, i32* @ngx_http_reqstat_log_handler, align 4
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* @NGX_HTTP_REWRITE_PHASE, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32* @ngx_array_push(i32* %28)
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @NGX_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %41

34:                                               ; preds = %20
  %35 = load i32, i32* @ngx_http_reqstat_init_handler, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @ngx_http_top_input_body_filter, align 4
  store i32 %37, i32* @ngx_http_next_input_body_filter, align 4
  %38 = load i32, i32* @ngx_http_reqstat_input_body_filter, align 4
  store i32 %38, i32* @ngx_http_top_input_body_filter, align 4
  %39 = load i32, i32* @ngx_http_reqstat_log_flow, align 4
  store i32 %39, i32* @ngx_http_write_filter_stat, align 4
  %40 = load i32, i32* @NGX_OK, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %32, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_5__* @ngx_http_conf_get_module_main_conf(i32*, i32) #1

declare dso_local i32* @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
