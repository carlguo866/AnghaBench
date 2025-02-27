; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdSynch.c_acpi_acquire_global_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdSynch.c_acpi_acquire_global_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_GLOCK_PENDING = common dso_local global i32 0, align 4
@ACPI_GLOCK_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_acquire_global_lock(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32*, i32** %2, align 8
  %7 = load volatile i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ACPI_GLOCK_PENDING, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load i32, i32* @ACPI_GLOCK_OWNED, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ACPI_GLOCK_OWNED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @ACPI_GLOCK_PENDING, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %5
  br label %23

23:                                               ; preds = %22
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @atomic_cmpset_32(i32* %24, i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %5, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ACPI_GLOCK_PENDING, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @atomic_cmpset_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
