; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_predtest.c_predicate_refuted_by.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_predtest.c_predicate_refuted_by.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @predicate_refuted_by(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** @NIL, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** @NIL, align 8
  %17 = icmp eq i32* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %44

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @list_length(i32* %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @linitial(i32* %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %8, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  store i32* %28, i32** %8, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @list_length(i32* %30)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @linitial(i32* %34)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %9, align 8
  br label %39

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  store i32* %38, i32** %9, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @predicate_refuted_by_recurse(i32* %40, i32* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %18, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32 @predicate_refuted_by_recurse(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
