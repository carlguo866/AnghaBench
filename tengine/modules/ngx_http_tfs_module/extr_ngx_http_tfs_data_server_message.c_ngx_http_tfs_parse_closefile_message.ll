; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_parse_closefile_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_parse_closefile_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"close file(data server)\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"close file response msg type is invalid  %d \00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ngx_http_tfs_parse_closefile_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_tfs_parse_closefile_message(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %25 [
    i32 128, label %15
  ]

15:                                               ; preds = %1
  %16 = call i32 @ngx_str_set(i32* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ngx_http_tfs_status_message(i32* %20, i32* %5, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load i32, i32* @NGX_LOG_INFO, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ngx_log_error(i32 %26, i32 %29, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @NGX_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @ngx_http_tfs_status_message(i32*, i32*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
