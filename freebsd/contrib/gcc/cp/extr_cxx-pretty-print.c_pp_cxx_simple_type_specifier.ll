; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_simple_type_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_simple_type_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"typename\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_simple_type_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_simple_type_specifier(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %26 [
    i32 133, label %7
    i32 128, label %7
    i32 134, label %7
    i32 130, label %11
    i32 131, label %11
    i32 132, label %11
    i32 129, label %15
  ]

7:                                                ; preds = %2, %2, %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pp_cxx_qualified_id(i32* %8, i32 %9)
  br label %31

11:                                               ; preds = %2, %2, %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pp_cxx_unqualified_id(i32* %12, i32 %13)
  br label %31

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @pp_cxx_identifier(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TYPE_CONTEXT(i32 %19)
  %21 = call i32 @pp_cxx_nested_name_specifier(i32* %18, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TYPE_NAME(i32 %23)
  %25 = call i32 @pp_cxx_unqualified_id(i32* %22, i32 %24)
  br label %31

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @pp_c_base(i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pp_c_type_specifier(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %15, %11, %7
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_cxx_qualified_id(i32*, i32) #1

declare dso_local i32 @pp_cxx_unqualified_id(i32*, i32) #1

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i32 @pp_cxx_nested_name_specifier(i32*, i32) #1

declare dso_local i32 @TYPE_CONTEXT(i32) #1

declare dso_local i32 @TYPE_NAME(i32) #1

declare dso_local i32 @pp_c_type_specifier(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
