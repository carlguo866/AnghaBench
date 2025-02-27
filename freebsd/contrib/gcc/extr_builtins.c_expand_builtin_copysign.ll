; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_copysign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_copysign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @expand_builtin_copysign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_copysign(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @REAL_TYPE, align 4
  %13 = load i32, i32* @REAL_TYPE, align 4
  %14 = load i32, i32* @VOID_TYPE, align 4
  %15 = call i32 @validate_arglist(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TREE_VALUE(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @VOIDmode, align 4
  %24 = load i32, i32* @EXPAND_NORMAL, align 4
  %25 = call i32 @expand_expr(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @TREE_CHAIN(i32 %26)
  %28 = call i32 @TREE_VALUE(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @expand_normal(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @expand_copysign(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %18, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @expand_normal(i32) #1

declare dso_local i32 @expand_copysign(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
