; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_parser.tab.c_new_double_expression.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_parser.tab.c_new_double_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32 }

@EXPR_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, double)* @new_double_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @new_double_expression(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @EXPR_DOUBLE, align 4
  %9 = call %struct.TYPE_3__* @new_expression(i32* %7, i32 %8, i32 16)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load double, double* %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store double %14, double* %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32* %18, i32** %3, align 8
  br label %19

19:                                               ; preds = %13, %12
  %20 = load i32*, i32** %3, align 8
  ret i32* %20
}

declare dso_local %struct.TYPE_3__* @new_expression(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
