; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_testFetchCompare.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_testFetchCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testFetchCompare.nCall = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testFetchCompare(i32* %0, i32* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* @testFetchCompare.nCall, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @testFetchCompare.nCall, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @tdb_fetch(i32* %18, i8* %19, i32 %20, i8** %12, i32* %14)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @testSetError(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @tdb_fetch(i32* %24, i8* %25, i32 %26, i8** %13, i32* %15)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @testSetError(i32 %28)
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %5
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @memcmp(i8* %41, i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %33
  %47 = call i32 @testSetError(i32 1)
  br label %48

48:                                               ; preds = %46, %40, %37, %5
  ret void
}

declare dso_local i32 @tdb_fetch(i32*, i8*, i32, i8**, i32*) #1

declare dso_local i32 @testSetError(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
