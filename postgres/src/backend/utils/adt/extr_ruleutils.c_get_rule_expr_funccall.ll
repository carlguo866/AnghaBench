; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_rule_expr_funccall.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_rule_expr_funccall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"CAST(\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" AS %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32)* @get_rule_expr_funccall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rule_expr_funccall(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @looks_like_function(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @get_rule_expr(i32* %12, %struct.TYPE_4__* %13, i32 %14)
  br label %32

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @appendStringInfoString(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = call i32 @get_rule_expr(i32* %22, %struct.TYPE_4__* %23, i32 0)
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @exprType(i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @exprTypmod(i32* %28)
  %30 = call i32 @format_type_with_typemod(i32 %27, i32 %29)
  %31 = call i32 @appendStringInfo(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %16, %11
  ret void
}

declare dso_local i64 @looks_like_function(i32*) #1

declare dso_local i32 @get_rule_expr(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32) #1

declare dso_local i32 @format_type_with_typemod(i32, i32) #1

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32 @exprTypmod(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
