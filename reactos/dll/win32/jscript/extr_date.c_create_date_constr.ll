; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_create_date_constr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_create_date_constr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@create_date_constr.DateW = internal constant [5 x i8] c"Date\00", align 1
@DateConstr_value = common dso_local global i32 0, align 4
@DateConstr_info = common dso_local global i32 0, align 4
@PROPF_CONSTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_date_constr(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @create_date(i32* %10, i32* %11, double 0.000000e+00, i32** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @DateConstr_value, align 4
  %21 = load i32, i32* @PROPF_CONSTR, align 4
  %22 = or i32 %21, 7
  %23 = load i32*, i32** %8, align 8
  %24 = load i32**, i32*** %7, align 8
  %25 = call i32 @create_builtin_constructor(i32* %19, i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @create_date_constr.DateW, i64 0, i64 0), i32* @DateConstr_info, i32 %22, i32* %23, i32** %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @jsdisp_release(i32* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %16
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @create_date(i32*, i32*, double, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @create_builtin_constructor(i32*, i32, i8*, i32*, i32, i32*, i32**) #1

declare dso_local i32 @jsdisp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
