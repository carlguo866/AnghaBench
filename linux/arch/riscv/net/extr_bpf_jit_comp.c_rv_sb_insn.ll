; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_rv_sb_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_rv_sb_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @rv_sb_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv_sb_insn(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 2048
  %15 = ashr i32 %14, 5
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 1008
  %18 = ashr i32 %17, 4
  %19 = or i32 %15, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 15
  %22 = shl i32 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 1024
  %25 = ashr i32 %24, 10
  %26 = or i32 %22, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = shl i32 %27, 25
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 20
  %31 = or i32 %28, %30
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 15
  %34 = or i32 %31, %33
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 %35, 12
  %37 = or i32 %34, %36
  %38 = load i32, i32* %12, align 4
  %39 = shl i32 %38, 7
  %40 = or i32 %37, %39
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %40, %41
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
