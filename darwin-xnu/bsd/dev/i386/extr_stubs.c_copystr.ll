; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_stubs.c_copystr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_stubs.c_copystr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copystr(i8* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %12, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %36, %4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i8*, i8** %11, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %11, align 8
  %22 = load i8, i8* %20, align 1
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %12, align 8
  store i8 %22, i8* %23, align 1
  %25 = sext i8 %22 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i64*, i64** %9, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, 1
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %27
  store i32 0, i32* %5, align 4
  br label %47

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %15

39:                                               ; preds = %15
  %40 = load i64*, i64** %9, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %34
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
