; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_at_namespace_scope_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_at_namespace_scope_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAMESPACE_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @at_namespace_scope_p() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @current_scope()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i64, i64* %1, align 8
  %7 = call i64 @TREE_CODE(i64 %6)
  %8 = load i64, i64* @NAMESPACE_DECL, align 8
  %9 = icmp eq i64 %7, %8
  br label %10

10:                                               ; preds = %5, %0
  %11 = phi i1 [ false, %0 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32
  ret i32 %12
}

declare dso_local i64 @current_scope(...) #1

declare dso_local i64 @TREE_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
