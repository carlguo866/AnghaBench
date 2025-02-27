; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_hts_stop.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_hts_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hts_stopped = common dso_local global i32 0, align 4
@http_sfd = common dso_local global i32 0, align 4
@precise_now = common dso_local global i64 0, align 8
@SIGTERM_WAIT_TIMEOUT = common dso_local global i64 0, align 8
@sigterm_time = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hts_stop() #0 {
  %1 = load i32, i32* @hts_stopped, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %16

4:                                                ; preds = %0
  %5 = load i32, i32* @http_sfd, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i32, i32* @http_sfd, align 4
  %9 = call i32 @epoll_close(i32 %8)
  %10 = load i32, i32* @http_sfd, align 4
  %11 = call i32 @close(i32 %10)
  store i32 -1, i32* @http_sfd, align 4
  br label %12

12:                                               ; preds = %7, %4
  %13 = load i64, i64* @precise_now, align 8
  %14 = load i64, i64* @SIGTERM_WAIT_TIMEOUT, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* @sigterm_time, align 8
  store i32 1, i32* @hts_stopped, align 4
  br label %16

16:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @epoll_close(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
