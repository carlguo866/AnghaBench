; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xemit.c_def_ff.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xemit.c_def_ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*)* @def_ff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @def_ff(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %5
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isalpha(i8 zeroext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 95
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 36
  br i1 %29, label %30, label %59

30:                                               ; preds = %25, %20, %15
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i64, i64* %8, align 8
  %39 = icmp slt i64 0, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub nsw i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isspace(i8 zeroext %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %40, %37
  %49 = phi i1 [ false, %37 ], [ %47, %40 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %8, align 8
  br label %37

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @memcpy(i8* %54, i8* %55, i64 %56)
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %6, align 8
  br label %60

59:                                               ; preds = %25, %5
  store i64 -1, i64* %6, align 8
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i64, i64* %6, align 8
  ret i64 %61
}

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
