; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sockfilt.c_install_signal_handlers.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sockfilt.c_install_signal_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGALRM = common dso_local global i32 0, align 4
@SIGBREAK = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@exit_signal_handler = common dso_local global i32 0, align 4
@old_sigalrm_handler = common dso_local global i64 0, align 8
@old_sigbreak_handler = common dso_local global i64 0, align 8
@old_sighup_handler = common dso_local global i64 0, align 8
@old_sigint_handler = common dso_local global i64 0, align 8
@old_sigpipe_handler = common dso_local global i64 0, align 8
@old_sigterm_handler = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @install_signal_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_signal_handlers() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
