; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_promoted_input_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_promoted_input_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_decl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @promoted_input_arg(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @current_function_decl, align 4
  %12 = call i64 @DECL_ARGUMENTS(i32 %11)
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %67, %3
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %13
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @DECL_INCOMING_RTL(i64 %17)
  %19 = call i64 @REG_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %16
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @DECL_INCOMING_RTL(i64 %22)
  %24 = call i32 @REGNO(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @DECL_ARG_TYPE(i64 %28)
  %30 = call i64 @TYPE_MODE(i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @TREE_TYPE(i64 %31)
  %33 = call i64 @TYPE_MODE(i32 %32)
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %27
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @TREE_TYPE(i64 %36)
  %38 = call i64 @TYPE_MODE(i32 %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @TREE_TYPE(i64 %40)
  %42 = call i32 @TYPE_UNSIGNED(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @TREE_TYPE(i64 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @promote_mode(i32 %44, i32 %45, i32* %10, i32 1)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @DECL_INCOMING_RTL(i64 %48)
  %50 = call i32 @GET_MODE(i32 %49)
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %35
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @DECL_MODE(i64 %54)
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @DECL_MODE(i64 %58)
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @DECL_INCOMING_RTL(i64 %63)
  store i32 %64, i32* %4, align 4
  br label %71

65:                                               ; preds = %52, %35
  br label %66

66:                                               ; preds = %65, %27, %21, %16
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @TREE_CHAIN(i64 %68)
  store i64 %69, i64* %8, align 8
  br label %13

70:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @DECL_ARGUMENTS(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @DECL_INCOMING_RTL(i64) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i32 @DECL_ARG_TYPE(i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @promote_mode(i32, i32, i32*, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @DECL_MODE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
