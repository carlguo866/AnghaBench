; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_rename.c_wceex_rename.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_rename.c_wceex_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wceex_rename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @CP_ACP, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @MultiByteToWideChar(i32 %11, i32 0, i8* %12, i32 -1, i32* null, i64 0)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = call i64 @malloc(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* @CP_ACP, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @MultiByteToWideChar(i32 %19, i32 0, i8* %20, i32 -1, i32* %21, i64 %22)
  %24 = load i32, i32* @CP_ACP, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @MultiByteToWideChar(i32 %24, i32 0, i8* %25, i32 -1, i32* null, i64 0)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i64 @malloc(i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* @CP_ACP, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @MultiByteToWideChar(i32 %32, i32 0, i8* %33, i32 -1, i32* %34, i64 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @MoveFile(i32* %37, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @free(i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @MoveFile(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
