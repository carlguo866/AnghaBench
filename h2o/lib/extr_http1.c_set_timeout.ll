; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_set_timeout.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_conn_t*, i32, i32*)* @set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_timeout(%struct.st_h2o_http1_conn_t* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.st_h2o_http1_conn_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %8 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %14 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %13, i32 0, i32 0
  %15 = call i32 @h2o_timer_unlink(%struct.TYPE_7__* %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32* %17, i32** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %25 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %32 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %31, i32 0, i32 0
  %33 = call i32 @h2o_timer_link(i32 %29, i32 %30, %struct.TYPE_7__* %32)
  br label %34

34:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @h2o_timer_unlink(%struct.TYPE_7__*) #1

declare dso_local i32 @h2o_timer_link(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
