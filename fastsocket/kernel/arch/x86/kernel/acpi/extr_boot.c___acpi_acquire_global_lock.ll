; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/acpi/extr_boot.c___acpi_acquire_global_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/acpi/extr_boot.c___acpi_acquire_global_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__acpi_acquire_global_lock(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, -4
  %11 = add i32 %10, 2
  %12 = load i32, i32* %3, align 4
  %13 = lshr i32 %12, 1
  %14 = and i32 %13, 1
  %15 = add i32 %11, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @cmpxchg(i32* %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %6, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp ult i32 %28, 3
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 -1, i32 0
  ret i32 %31
}

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
