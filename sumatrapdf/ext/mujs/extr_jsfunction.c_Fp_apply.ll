; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_Fp_apply.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_Fp_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"not a function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Fp_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Fp_apply(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @js_iscallable(i32* %5, i32 0)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @js_typeerror(i32* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @js_copy(i32* %12, i32 0)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @js_copy(i32* %14, i32 1)
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @js_isnull(i32* %16, i32 2)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @js_isundefined(i32* %20, i32 2)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %11
  store i32 0, i32* %4, align 4
  br label %39

24:                                               ; preds = %19
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @js_getlength(i32* %25, i32 2)
  store i32 %26, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %35, %24
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @js_getindex(i32* %32, i32 2, i32 %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %27

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @js_call(i32* %40, i32 %41)
  ret void
}

declare dso_local i32 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i64 @js_isnull(i32*, i32) #1

declare dso_local i64 @js_isundefined(i32*, i32) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i32 @js_getindex(i32*, i32, i32) #1

declare dso_local i32 @js_call(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
