; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5312_chip.c_ar5312_chip_device_stopped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5312_chip.c_ar5312_chip_device_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR5312_SYSREG_BASE = common dso_local global i64 0, align 8
@AR5312_SYSREG_RESETCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ar5312_chip_device_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5312_chip_device_stopped(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %5 = load i64, i64* @AR5312_SYSREG_RESETCTL, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @ATH_READ_REG(i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i32 @ATH_READ_REG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
