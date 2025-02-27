; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.c_openvpn_exit.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.c_openvpn_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@forked = common dso_local global i32 0, align 4
@OPENVPN_EXIT_STATUS_GOOD = common dso_local global i32 0, align 4
@OPENVPN_EXIT_STATUS_ERROR = common dso_local global i32 0, align 4
@port_share = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @openvpn_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @forked, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = call i32 (...) @tun_abort()
  %7 = call i32 (...) @close_syslog()
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @OPENVPN_EXIT_STATUS_GOOD, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = call i32 (...) @perf_output_results()
  br label %13

13:                                               ; preds = %11, %5
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @exit(i32 %15) #3
  unreachable
}

declare dso_local i32 @tun_abort(...) #1

declare dso_local i32 @close_syslog(...) #1

declare dso_local i32 @perf_output_results(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
