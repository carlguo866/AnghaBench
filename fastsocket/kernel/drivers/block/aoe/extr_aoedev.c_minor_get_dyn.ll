; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_minor_get_dyn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_minor_get_dyn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@used_minors_lock = common dso_local global i32 0, align 4
@used_minors = common dso_local global i32 0, align 4
@N_DEVS = common dso_local global i32 0, align 4
@AOE_PARTITIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @minor_get_dyn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minor_get_dyn(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @spin_lock_irqsave(i32* @used_minors_lock, i32 %6)
  %8 = load i32, i32* @used_minors, align 4
  %9 = load i32, i32* @N_DEVS, align 4
  %10 = call i32 @find_first_zero_bit(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @N_DEVS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @used_minors, align 4
  %17 = call i32 @set_bit(i32 %15, i32 %16)
  br label %19

18:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @spin_unlock_irqrestore(i32* @used_minors_lock, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AOE_PARTITIONS, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32*, i32** %2, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
