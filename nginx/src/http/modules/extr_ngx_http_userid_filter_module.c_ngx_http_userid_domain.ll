; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_domain.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"; domain=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i8*, i8*)* @ngx_http_userid_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_userid_domain(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @ngx_strcmp(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = call i32 @ngx_str_set(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %21, i8** %4, align 8
  br label %58

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add i64 9, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32* @ngx_pnalloc(i32 %25, i32 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %36, i8** %4, align 8
  br label %58

37:                                               ; preds = %22
  %38 = load i32*, i32** %10, align 8
  %39 = call i32* @ngx_cpymem(i32* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ngx_memcpy(i32* %40, i32* %43, i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 9
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %37, %35, %18
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

declare dso_local i64 @ngx_strcmp(i32*, i8*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_5__*, i8*) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i32* @ngx_cpymem(i32*, i8*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
