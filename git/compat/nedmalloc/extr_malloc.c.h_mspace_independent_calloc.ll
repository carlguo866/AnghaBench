; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_mspace_independent_calloc.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_mspace_independent_calloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @mspace_independent_calloc(i32 %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i64, i64* %8, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i32 @ok_magic(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @USAGE_ERROR_ACTION(i32 %18, i32 %19)
  store i8** null, i8*** %5, align 8
  br label %26

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = call i8** @ialloc(i32 %22, i64 %23, i64* %10, i32 3, i8** %24)
  store i8** %25, i8*** %5, align 8
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i8**, i8*** %5, align 8
  ret i8** %27
}

declare dso_local i32 @ok_magic(i32) #1

declare dso_local i32 @USAGE_ERROR_ACTION(i32, i32) #1

declare dso_local i8** @ialloc(i32, i64, i64*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
