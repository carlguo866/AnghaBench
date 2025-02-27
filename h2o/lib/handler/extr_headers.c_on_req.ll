; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_headers.c_on_req.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_headers.c_on_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.st_headers_early_hints_handler_t = type { i32 }
%struct.st_headers_early_hints_sender_t = type { i32, i32, %struct.TYPE_7__* }

@on_sender_dispose = common dso_local global i32 0, align 4
@on_sender_deferred_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @on_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_req(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.st_headers_early_hints_handler_t*, align 8
  %6 = alloca %struct.st_headers_early_hints_sender_t*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = bitcast i8* %8 to %struct.st_headers_early_hints_handler_t*
  store %struct.st_headers_early_hints_handler_t* %9, %struct.st_headers_early_hints_handler_t** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* @on_sender_dispose, align 4
  %13 = call %struct.st_headers_early_hints_sender_t* @h2o_mem_alloc_shared(i32* %11, i32 16, i32 %12)
  store %struct.st_headers_early_hints_sender_t* %13, %struct.st_headers_early_hints_sender_t** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = load %struct.st_headers_early_hints_sender_t*, %struct.st_headers_early_hints_sender_t** %6, align 8
  %16 = getelementptr inbounds %struct.st_headers_early_hints_sender_t, %struct.st_headers_early_hints_sender_t* %15, i32 0, i32 2
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %16, align 8
  %17 = load %struct.st_headers_early_hints_handler_t*, %struct.st_headers_early_hints_handler_t** %5, align 8
  %18 = getelementptr inbounds %struct.st_headers_early_hints_handler_t, %struct.st_headers_early_hints_handler_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.st_headers_early_hints_sender_t*, %struct.st_headers_early_hints_sender_t** %6, align 8
  %21 = getelementptr inbounds %struct.st_headers_early_hints_sender_t, %struct.st_headers_early_hints_sender_t* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.st_headers_early_hints_sender_t*, %struct.st_headers_early_hints_sender_t** %6, align 8
  %23 = getelementptr inbounds %struct.st_headers_early_hints_sender_t, %struct.st_headers_early_hints_sender_t* %22, i32 0, i32 0
  %24 = load i32, i32* @on_sender_deferred_timeout, align 4
  %25 = call i32 @h2o_timer_init(i32* %23, i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.st_headers_early_hints_sender_t*, %struct.st_headers_early_hints_sender_t** %6, align 8
  %34 = getelementptr inbounds %struct.st_headers_early_hints_sender_t, %struct.st_headers_early_hints_sender_t* %33, i32 0, i32 0
  %35 = call i32 @h2o_timer_link(i32 %32, i32 0, i32* %34)
  ret i32 -1
}

declare dso_local %struct.st_headers_early_hints_sender_t* @h2o_mem_alloc_shared(i32*, i32, i32) #1

declare dso_local i32 @h2o_timer_init(i32*, i32) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
