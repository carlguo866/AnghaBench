; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_secure_link_module.c_ngx_http_secure_link_add_variables.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_secure_link_module.c_ngx_http_secure_link_add_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ngx_http_secure_link_name = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_http_secure_link_variable = common dso_local global i32 0, align 4
@ngx_http_secure_link_expires_name = common dso_local global i32 0, align 4
@ngx_http_secure_link_expires_variable = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_secure_link_add_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_secure_link_add_variables(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.TYPE_3__* @ngx_http_add_variable(i32* %5, i32* @ngx_http_secure_link_name, i32 0)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @NGX_ERROR, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @ngx_http_secure_link_variable, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.TYPE_3__* @ngx_http_add_variable(i32* %15, i32* @ngx_http_secure_link_expires_name, i32 0)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @NGX_ERROR, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %11
  %22 = load i32, i32* @ngx_http_secure_link_expires_variable, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @NGX_OK, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %19, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.TYPE_3__* @ngx_http_add_variable(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
