; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_semantics.c_cxx_omp_predetermined_sharing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_semantics.c_cxx_omp_predetermined_sharing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMP_CLAUSE_DEFAULT_UNSPECIFIED = common dso_local global i32 0, align 4
@OMP_CLAUSE_DEFAULT_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxx_omp_predetermined_sharing(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @c_omp_predetermined_sharing(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @OMP_CLAUSE_DEFAULT_UNSPECIFIED, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @TREE_STATIC(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @CP_DECL_CONTEXT(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @TYPE_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @IS_AGGR_TYPE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @OMP_CLAUSE_DEFAULT_SHARED, align 4
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %23, %17
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32, i32* @OMP_CLAUSE_DEFAULT_UNSPECIFIED, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %27, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @c_omp_predetermined_sharing(i32) #1

declare dso_local i64 @TREE_STATIC(i32) #1

declare dso_local i32 @CP_DECL_CONTEXT(i32) #1

declare dso_local i64 @TYPE_P(i32) #1

declare dso_local i64 @IS_AGGR_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
