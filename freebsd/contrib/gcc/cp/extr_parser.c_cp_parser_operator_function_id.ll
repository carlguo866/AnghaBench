; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_operator_function_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_operator_function_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RID_OPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"`operator'\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cp_parser_operator_function_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_operator_function_id(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* @RID_OPERATOR, align 4
  %6 = call i32 @cp_parser_require_keyword(i32* %4, i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @error_mark_node, align 4
  store i32 %9, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @cp_parser_operator(i32* %11)
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @cp_parser_require_keyword(i32*, i32, i8*) #1

declare dso_local i32 @cp_parser_operator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
