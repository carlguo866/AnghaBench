; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_shift_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_shift_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_c_shift_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_c_shift_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %27 [
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TREE_OPERAND(i32 %11, i32 0)
  call void @pp_c_shift_expression(i32* %10, i32 %12)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @pp_c_whitespace(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 129
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %20 = call i32 @pp_identifier(i32* %15, i8* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @pp_c_whitespace(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @TREE_OPERAND(i32 %24, i32 1)
  %26 = call i32 @pp_c_additive_expression(i32* %23, i32 %25)
  br label %31

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pp_c_additive_expression(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %9
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_c_whitespace(i32*) #1

declare dso_local i32 @pp_identifier(i32*, i8*) #1

declare dso_local i32 @pp_c_additive_expression(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
