; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_eliminate_known_true.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_eliminate_known_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @eliminate_known_true to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eliminate_known_true(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @SIMPLIFY_TEST_EXP(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @AND, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @XEXP(i32 %19, i32 0)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @eliminate_known_true(i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @XEXP(i32 %25, i32 1)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @eliminate_known_true(i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %37

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @simplify_and_tree(i32 %33, i32* %9, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %31, %18
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @SIMPLIFY_TEST_EXP(i32, i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @simplify_and_tree(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
