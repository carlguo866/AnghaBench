; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_need_fake_edge_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_need_fake_edge_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_NORETURN = common dso_local global i32 0, align 4
@ASM_OPERANDS = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@ASM_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @need_fake_edge_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_fake_edge_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @INSN_P(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @CALL_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @SIBLING_CALL_P(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @REG_NORETURN, align 4
  %19 = call i32 @find_reg_note(i32 %17, i32 %18, i32* null)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @CONST_OR_PURE_CALL_P(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %62

26:                                               ; preds = %21, %16, %12, %8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @PATTERN(i32 %27)
  %29 = call i64 @GET_CODE(i32 %28)
  %30 = load i64, i64* @ASM_OPERANDS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @PATTERN(i32 %33)
  %35 = call i64 @MEM_VOLATILE_P(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %32, %26
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @PATTERN(i32 %38)
  %40 = call i64 @GET_CODE(i32 %39)
  %41 = load i64, i64* @PARALLEL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @asm_noperands(i32 %44)
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @PATTERN(i32 %48)
  %50 = call i32 @XVECEXP(i32 %49, i32 0, i32 0)
  %51 = call i64 @MEM_VOLATILE_P(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47, %43, %37
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @PATTERN(i32 %54)
  %56 = call i64 @GET_CODE(i32 %55)
  %57 = load i64, i64* @ASM_INPUT, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %53, %47, %32
  %60 = phi i1 [ true, %47 ], [ true, %32 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %25, %7
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @INSN_P(i32) #1

declare dso_local i64 @CALL_P(i32) #1

declare dso_local i32 @SIBLING_CALL_P(i32) #1

declare dso_local i32 @find_reg_note(i32, i32, i32*) #1

declare dso_local i32 @CONST_OR_PURE_CALL_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @asm_noperands(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
