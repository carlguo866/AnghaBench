; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_delete.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_delete(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @stack_pop(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @stack_pop(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @to_object(i32* %15, i32 %16, i32** %6)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @jsval_release(i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @jsval_release(i32 %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %2, align 4
  br label %59

27:                                               ; preds = %1
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @to_string(i32* %28, i32 %29, i32** %7)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @jsval_release(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @IDispatch_Release(i32* %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %2, align 4
  br label %59

40:                                               ; preds = %27
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @disp_delete_name(i32* %41, i32* %42, i32* %43, i32* %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @IDispatch_Release(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @jsstr_release(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %59

54:                                               ; preds = %40
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @jsval_bool(i32 %56)
  %58 = call i32 @stack_push(i32* %55, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %52, %36, %23
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @stack_pop(i32*) #1

declare dso_local i32 @to_object(i32*, i32, i32**) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @disp_delete_name(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @stack_push(i32*, i32) #1

declare dso_local i32 @jsval_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
