; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_conditional_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_conditional_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COND_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_c_conditional_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_c_conditional_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @COND_EXPR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TREE_OPERAND(i32 %11, i32 0)
  %13 = call i32 @pp_c_logical_or_expression(i32* %10, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pp_c_whitespace(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @pp_question(i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @pp_c_whitespace(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TREE_OPERAND(i32 %21, i32 1)
  %23 = call i32 @pp_expression(i32* %20, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @pp_c_whitespace(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @pp_colon(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @pp_c_whitespace(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @TREE_OPERAND(i32 %31, i32 2)
  call void @pp_c_conditional_expression(i32* %30, i32 %32)
  br label %37

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pp_c_logical_or_expression(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %9
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @pp_c_logical_or_expression(i32*, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_c_whitespace(i32*) #1

declare dso_local i32 @pp_question(i32*) #1

declare dso_local i32 @pp_expression(i32*, i32) #1

declare dso_local i32 @pp_colon(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
