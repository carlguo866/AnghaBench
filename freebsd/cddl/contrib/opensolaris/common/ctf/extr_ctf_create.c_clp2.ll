; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_clp2.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_clp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @clp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clp2(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = add i64 %3, -1
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = lshr i64 %5, 1
  %7 = load i64, i64* %2, align 8
  %8 = or i64 %7, %6
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = lshr i64 %9, 2
  %11 = load i64, i64* %2, align 8
  %12 = or i64 %11, %10
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = lshr i64 %13, 4
  %15 = load i64, i64* %2, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = lshr i64 %17, 8
  %19 = load i64, i64* %2, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = lshr i64 %21, 16
  %23 = load i64, i64* %2, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = add i64 %25, 1
  ret i64 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
