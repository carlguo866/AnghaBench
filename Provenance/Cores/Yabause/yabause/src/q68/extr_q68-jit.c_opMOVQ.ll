; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opMOVQ.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opMOVQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_IMM8 = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@imm8 = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opMOVQ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opMOVQ(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @INSN_GET_REG, align 4
  %7 = load i32, i32* @INSN_GET_IMM8, align 4
  %8 = load i32, i32* @current_entry, align 4
  %9 = load i32, i32* @imm8, align 4
  %10 = call i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32 %8, i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @cc_needed(i32* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @current_entry, align 4
  %15 = call i32 @JIT_EMIT_MOVE_L(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @current_entry, align 4
  %20 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @current_entry, align 4
  %23 = load i32, i32* @reg, align 4
  %24 = mul nsw i32 %23, 4
  %25 = call i32 @JIT_EMIT_SET_REGISTER_L(i32 %22, i32 %24)
  %26 = load i32, i32* @current_entry, align 4
  %27 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %26, i32 4)
  ret i32 0
}

declare dso_local i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32, i32) #1

declare dso_local i32 @cc_needed(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_MOVE_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_L(i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_L(i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
