; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_identifier_type_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_identifier_type_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@global_type_node = common dso_local global i64 0, align 8
@LOOKUP_COMPLAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @identifier_type_value(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %5 = call i32 @timevar_push(i32 %4)
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @REAL_IDENTIFIER_TYPE_VALUE(i64 %6)
  %8 = load i64, i64* @NULL_TREE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %12 = load i64, i64* @NULL_TREE, align 8
  %13 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %11, i64 %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @REAL_IDENTIFIER_TYPE_VALUE(i64 %15)
  %17 = load i64, i64* @global_type_node, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @REAL_IDENTIFIER_TYPE_VALUE(i64 %21)
  %23 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %20, i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i64, i64* %3, align 8
  %26 = load i32, i32* @LOOKUP_COMPLAIN, align 4
  %27 = call i64 @lookup_name_real(i64 %25, i32 2, i32 1, i32 1, i32 0, i32 %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @TREE_TYPE(i64 %32)
  %34 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %31, i64 %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %37 = load i64, i64* @NULL_TREE, align 8
  %38 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %36, i64 %37)
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i64 @REAL_IDENTIFIER_TYPE_VALUE(i64) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i64) #1

declare dso_local i64 @lookup_name_real(i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
