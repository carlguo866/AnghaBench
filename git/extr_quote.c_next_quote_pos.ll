; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_next_quote_pos.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_next_quote_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @next_quote_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @next_quote_pos(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %18, %8
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = call i32 @sq_must_quote(i8 signext %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %5, align 8
  br label %9

21:                                               ; preds = %9
  br label %42

22:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @sq_must_quote(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %27, %23
  %36 = phi i1 [ false, %23 ], [ %34, %27 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %23

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i32 @sq_must_quote(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
