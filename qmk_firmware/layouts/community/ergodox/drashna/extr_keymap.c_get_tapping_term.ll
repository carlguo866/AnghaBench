; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/drashna/extr_keymap.c_get_tapping_term.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/drashna/extr_keymap.c_get_tapping_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QK_MOD_TAP = common dso_local global i32 0, align 4
@QK_MOD_TAP_MAX = common dso_local global i32 0, align 4
@MOD_MASK_ALT = common dso_local global i32 0, align 4
@TAPPING_TERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_tapping_term(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @QK_MOD_TAP, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @QK_MOD_TAP_MAX, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 15
  %14 = call i32 @mod_config(i32 %13)
  %15 = load i32, i32* @MOD_MASK_ALT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @TAPPING_TERM, align 4
  %20 = mul nsw i32 2, %19
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %7, %1
  %23 = load i32, i32* @TAPPING_TERM, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @mod_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
