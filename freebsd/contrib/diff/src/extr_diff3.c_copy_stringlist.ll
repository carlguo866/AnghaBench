; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_copy_stringlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_copy_stringlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8**, i64*, i32)* @copy_stringlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_stringlist(i8** %0, i64* %1, i8** %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8**, i8*** %7, align 8
  store i8** %16, i8*** %12, align 8
  %17 = load i8**, i8*** %9, align 8
  store i8** %17, i8*** %13, align 8
  %18 = load i64*, i64** %8, align 8
  store i64* %18, i64** %14, align 8
  %19 = load i64*, i64** %10, align 8
  store i64* %19, i64** %15, align 8
  br label %20

20:                                               ; preds = %52, %5
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %11, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load i8**, i8*** %13, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i64*, i64** %14, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %15, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = load i8**, i8*** %12, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %13, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i64*, i64** %14, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @memcmp(i8* %36, i8* %38, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34, %28
  store i32 0, i32* %6, align 4
  br label %62

44:                                               ; preds = %34
  br label %52

45:                                               ; preds = %24
  %46 = load i8**, i8*** %12, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8**, i8*** %13, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i64*, i64** %14, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %15, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %45, %44
  %53 = load i8**, i8*** %13, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %13, align 8
  %55 = load i8**, i8*** %12, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %12, align 8
  %57 = load i64*, i64** %15, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %15, align 8
  %59 = load i64*, i64** %14, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %14, align 8
  br label %20

61:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
