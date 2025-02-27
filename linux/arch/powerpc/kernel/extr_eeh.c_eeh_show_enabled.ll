; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_show_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_show_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EEH_FORCE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"EEH: Recovery disabled by kernel parameter.\0A\00", align 1
@EEH_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"EEH: Capable adapter found: recovery enabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"EEH: No capable adapters found: recovery disabled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeh_show_enabled() #0 {
  %1 = load i32, i32* @EEH_FORCE_DISABLED, align 4
  %2 = call i64 @eeh_has_flag(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %15

6:                                                ; preds = %0
  %7 = load i32, i32* @EEH_ENABLED, align 4
  %8 = call i64 @eeh_has_flag(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %14

12:                                               ; preds = %6
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %10
  br label %15

15:                                               ; preds = %14, %4
  ret void
}

declare dso_local i64 @eeh_has_flag(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
