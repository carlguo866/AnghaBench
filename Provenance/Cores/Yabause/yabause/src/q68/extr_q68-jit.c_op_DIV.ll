; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_DIV.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_DIV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_REG = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_DIV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_DIV(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @INSN_GET_REG, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 256
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SIZE_W, align 4
  %14 = call i32 @ea_get(i32* %11, i32 %12, i32 %13, i32 0, i32* %7, i32 1)
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i32, i32* @current_entry, align 4
  %20 = load i32, i32* @reg, align 4
  %21 = mul nsw i32 %20, 4
  %22 = call i32 @JIT_EMIT_GET_OP2_REGISTER(i32 %19, i32 %21)
  %23 = load i32, i32* @current_entry, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @current_entry, align 4
  %30 = call i32 @JIT_EMIT_DIVS_W(i32 %29)
  br label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @current_entry, align 4
  %33 = call i32 @JIT_EMIT_DIVU_W(i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @current_entry, align 4
  %36 = load i32, i32* @reg, align 4
  %37 = mul nsw i32 %36, 4
  %38 = call i32 @JIT_EMIT_SET_REGISTER_L(i32 %35, i32 %37)
  %39 = load i32, i32* @current_entry, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 158, i32 140
  %44 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %39, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_REGISTER(i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

declare dso_local i32 @JIT_EMIT_DIVS_W(i32) #1

declare dso_local i32 @JIT_EMIT_DIVU_W(i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_L(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
