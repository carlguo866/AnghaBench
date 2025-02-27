; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_user_state_from_blocked.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_user_state_from_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RFKILL_BLOCK_HW = common dso_local global i64 0, align 8
@RFKILL_USER_STATE_HARD_BLOCKED = common dso_local global i32 0, align 4
@RFKILL_BLOCK_SW = common dso_local global i64 0, align 8
@RFKILL_USER_STATE_SOFT_BLOCKED = common dso_local global i32 0, align 4
@RFKILL_USER_STATE_UNBLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @user_state_from_blocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_state_from_blocked(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @RFKILL_BLOCK_HW, align 8
  %6 = and i64 %4, %5
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @RFKILL_USER_STATE_HARD_BLOCKED, align 4
  store i32 %9, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @RFKILL_BLOCK_SW, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @RFKILL_USER_STATE_SOFT_BLOCKED, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @RFKILL_USER_STATE_UNBLOCKED, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %15, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
