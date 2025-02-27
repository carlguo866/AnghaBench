; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_prefix_suffix_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_prefix_suffix_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @prefix_suffix_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefix_suffix_match(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %3, %59
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %5, align 8
  %12 = load i8, i8* %10, align 1
  store i8 %12, i8* %8, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %37 [
    i32 0, label %14
    i32 42, label %20
  ]

14:                                               ; preds = %9
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  br label %60

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @prefix_suffix_match(i8* %27, i8* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %60

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %21

36:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %60

37:                                               ; preds = %9
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8, i8* %8, align 1
  %49 = call i32 @EVUTIL_TOLOWER_(i8 signext %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @EVUTIL_TOLOWER_(i8 signext %51)
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %44
  store i32 0, i32* %4, align 4
  br label %60

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  br label %59

59:                                               ; preds = %56
  br label %9

60:                                               ; preds = %54, %36, %32, %14
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @EVUTIL_TOLOWER_(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
