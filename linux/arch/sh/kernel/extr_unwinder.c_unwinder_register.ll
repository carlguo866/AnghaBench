; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_unwinder.c_unwinder_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_unwinder.c_unwinder_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwinder = type { i32 }

@unwinder_lock = common dso_local global i32 0, align 4
@curr_unwinder = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unwinder_register(%struct.unwinder* %0) #0 {
  %2 = alloca %struct.unwinder*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.unwinder* %0, %struct.unwinder** %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @unwinder_lock, i64 %5)
  %7 = load %struct.unwinder*, %struct.unwinder** %2, align 8
  %8 = call i32 @unwinder_enqueue(%struct.unwinder* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @select_unwinder()
  store i32 %12, i32* @curr_unwinder, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* @unwinder_lock, i64 %14)
  %16 = load i32, i32* %4, align 4
  ret i32 %16
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @unwinder_enqueue(%struct.unwinder*) #1

declare dso_local i32 @select_unwinder(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
