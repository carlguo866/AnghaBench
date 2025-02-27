; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_util.c_sock_err_fn.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_util.c_sock_err_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Unhappy socket\00", align 1
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sock_err_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sock_err_fn() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @AF_INET, align 4
  %3 = load i32, i32* @SOCK_STREAM, align 4
  %4 = call i32 @socket(i32 %2, i32 %3, i32 0)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @EAGAIN, align 4
  store i32 %5, i32* @errno, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @event_sock_err(i32 20, i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @event_sock_err(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
