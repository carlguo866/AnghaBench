; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_prep_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_prep_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @prep_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prep_operand(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @TREE_TYPE(i64 %6)
  %8 = call i64 @CLASS_TYPE_P(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @TREE_TYPE(i64 %11)
  %13 = call i64 @CLASSTYPE_TEMPLATE_INSTANTIATION(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @TREE_TYPE(i64 %16)
  %18 = call i32 @TYPE_MAIN_VARIANT(i32 %17)
  %19 = call i32 @instantiate_class_template(i32 %18)
  br label %20

20:                                               ; preds = %15, %10, %5
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INSTANTIATION(i32) #1

declare dso_local i32 @instantiate_class_template(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
