; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_fbsd.c_auditd_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_fbsd.c_auditd_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@auditing_state = common dso_local global i32 0, align 4
@AUD_STATE_INIT = common dso_local global i32 0, align 4
@AUD_STATE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Auditing enabled\00", align 1
@AUD_STATE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Auditing disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auditd_set_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @auditing_state, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @AUD_STATE_INIT, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @init_audit_state()
  br label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* @auditing_state, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32, i32* @auditing_state, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32, i32* @auditing_state, align 4
  %18 = load i32, i32* @AUD_STATE_ENABLED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @auditd_log_notice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* @auditing_state, align 4
  %24 = load i32, i32* @AUD_STATE_DISABLED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @auditd_log_notice(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  br label %29

29:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @init_audit_state(...) #1

declare dso_local i32 @auditd_log_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
