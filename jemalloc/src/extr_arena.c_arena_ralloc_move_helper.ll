; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_ralloc_move_helper.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_ralloc_move_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_LARGE_MAXCLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i64, i64, i32, i32*)* @arena_ralloc_move_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arena_ralloc_move_helper(i32* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @sz_size2index(i64 %20)
  %22 = load i32, i32* %12, align 4
  %23 = load i32*, i32** %13, align 8
  %24 = call i8* @arena_malloc(i32* %17, i32* %18, i64 %19, i32 %21, i32 %22, i32* %23, i32 1)
  store i8* %24, i8** %7, align 8
  br label %49

25:                                               ; preds = %6
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @sz_sa2u(i64 %26, i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @SC_LARGE_MAXCLASS, align 8
  %34 = icmp ugt i64 %32, %33
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i1 [ true, %25 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* null, i8** %7, align 8
  br label %49

41:                                               ; preds = %35
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i8* @ipalloct(i32* %42, i64 %43, i64 %44, i32 %45, i32* %46, i32* %47)
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %41, %40, %16
  %50 = load i8*, i8** %7, align 8
  ret i8* %50
}

declare dso_local i8* @arena_malloc(i32*, i32*, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i64 @sz_sa2u(i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ipalloct(i32*, i64, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
