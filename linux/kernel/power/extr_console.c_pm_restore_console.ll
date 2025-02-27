; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_console.c_pm_restore_console.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_console.c_pm_restore_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@orig_fgconsole = common dso_local global i64 0, align 8
@orig_kmsg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm_restore_console() #0 {
  %1 = call i32 (...) @pm_vt_switch()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %12

4:                                                ; preds = %0
  %5 = load i64, i64* @orig_fgconsole, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i64, i64* @orig_fgconsole, align 8
  %9 = call i32 @vt_move_to_console(i64 %8, i32 0)
  %10 = load i32, i32* @orig_kmsg, align 4
  %11 = call i32 @vt_kmsg_redirect(i32 %10)
  br label %12

12:                                               ; preds = %3, %7, %4
  ret void
}

declare dso_local i32 @pm_vt_switch(...) #1

declare dso_local i32 @vt_move_to_console(i64, i32) #1

declare dso_local i32 @vt_kmsg_redirect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
