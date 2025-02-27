; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lguest/extr_boot.c_lguest_set_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lguest/extr_boot.c_lguest_set_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LHCALL_SET_PGD = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @lguest_set_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lguest_set_pmd(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @native_set_pmd(i32* %5, i32 %6)
  %8 = load i32, i32* @LHCALL_SET_PGD, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @__pa(i32* %9)
  %11 = load i32, i32* @PAGE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @__pa(i32* %13)
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @lazy_hcall2(i32 %8, i32 %12, i32 %20)
  ret void
}

declare dso_local i32 @native_set_pmd(i32*, i32) #1

declare dso_local i32 @lazy_hcall2(i32, i32, i32) #1

declare dso_local i32 @__pa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
