; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_on_gc_dispose_request.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_on_gc_dispose_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_mruby_http_request_context_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @on_gc_dispose_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_gc_dispose_request(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_mruby_http_request_context_t*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.st_h2o_mruby_http_request_context_t*
  store %struct.st_h2o_mruby_http_request_context_t* %7, %struct.st_h2o_mruby_http_request_context_t** %5, align 8
  %8 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %5, align 8
  %9 = icmp eq %struct.st_h2o_mruby_http_request_context_t* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %25

11:                                               ; preds = %2
  %12 = call i32 (...) @mrb_nil_value()
  %13 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %5, align 8
  %14 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %5, align 8
  %17 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @mrb_nil_p(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %5, align 8
  %24 = call i32 @dispose_context(%struct.st_h2o_mruby_http_request_context_t* %23)
  br label %25

25:                                               ; preds = %10, %22, %11
  ret void
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @dispose_context(%struct.st_h2o_mruby_http_request_context_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
