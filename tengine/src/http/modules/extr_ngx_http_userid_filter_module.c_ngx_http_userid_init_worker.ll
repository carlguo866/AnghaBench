; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_init_worker.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_init_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }

@ngx_pid = common dso_local global i32 0, align 4
@start_value = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_userid_init_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_userid_init_worker(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.timeval, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 @ngx_gettimeofday(%struct.timeval* %3)
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = sdiv i32 %7, 20
  %9 = shl i32 %8, 16
  %10 = load i32, i32* @ngx_pid, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* @start_value, align 4
  %12 = load i32, i32* @NGX_OK, align 4
  ret i32 %12
}

declare dso_local i32 @ngx_gettimeofday(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
