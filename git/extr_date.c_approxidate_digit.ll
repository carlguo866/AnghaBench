; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_approxidate_digit.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_approxidate_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.tm*, i32*, i32)* @approxidate_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @approxidate_digit(i8* %0, %struct.tm* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.tm* %1, %struct.tm** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @parse_timestamp(i8* %13, i8** %10, i32 10)
  store i32 %14, i32* %11, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %42 [
    i32 58, label %18
    i32 46, label %18
    i32 47, label %18
    i32 45, label %18
  ]

18:                                               ; preds = %4, %4, %4, %4
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @isdigit(i8 signext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.tm*, %struct.tm** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @match_multi_number(i32 %25, i8 signext %27, i8* %28, i8* %29, %struct.tm* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8* %39, i8** %5, align 8
  br label %60

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %18
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 48
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = icmp sle i64 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %48, %42
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %58, %35
  %61 = load i8*, i8** %5, align 8
  ret i8* %61
}

declare dso_local i32 @parse_timestamp(i8*, i8**, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @match_multi_number(i32, i8 signext, i8*, i8*, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
