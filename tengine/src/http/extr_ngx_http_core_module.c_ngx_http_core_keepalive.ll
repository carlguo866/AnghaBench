; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_keepalive.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i64, i64 }

@NGX_CONF_UNSET_MSEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i32*, i8*)* @ngx_http_core_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_core_keepalive(%struct.TYPE_7__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NGX_CONF_UNSET_MSEC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = call i8* @ngx_parse_time(i32* %25, i32 0)
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NGX_ERROR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %60

36:                                               ; preds = %18
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %44, i8** %4, align 8
  br label %60

45:                                               ; preds = %36
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = call i8* @ngx_parse_time(i32* %47, i32 1)
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NGX_ERROR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %60

58:                                               ; preds = %45
  %59 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %58, %57, %43, %35, %17
  %61 = load i8*, i8** %4, align 8
  ret i8* %61
}

declare dso_local i8* @ngx_parse_time(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
