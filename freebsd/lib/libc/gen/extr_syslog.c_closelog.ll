; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_syslog.c_closelog.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_syslog.c_closelog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LogFile = common dso_local global i32 0, align 4
@LogTag = common dso_local global i32* null, align 8
@NOCONN = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @closelog() #0 {
  %1 = call i32 (...) @THREAD_LOCK()
  %2 = load i32, i32* @LogFile, align 4
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @LogFile, align 4
  %6 = call i32 @_close(i32 %5)
  store i32 -1, i32* @LogFile, align 4
  br label %7

7:                                                ; preds = %4, %0
  store i32* null, i32** @LogTag, align 8
  %8 = load i32, i32* @NOCONN, align 4
  store i32 %8, i32* @status, align 4
  %9 = call i32 (...) @THREAD_UNLOCK()
  ret void
}

declare dso_local i32 @THREAD_LOCK(...) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @THREAD_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
