; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/libc/extr_ltoa.c_ltoa.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/libc/extr_ltoa.c_ltoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ltoa(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  store i32 1, i32* %6, align 4
  %10 = load i64, i64* %3, align 8
  %11 = sub nsw i64 0, %10
  store i64 %11, i64* %3, align 8
  br label %13

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %12, %9
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i64, i64* %3, align 8
  %16 = srem i64 %15, 10
  %17 = add nsw i64 %16, 48
  %18 = trunc i64 %17 to i8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 %18, i8* %23, align 1
  br label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %3, align 8
  %26 = sdiv i64 %25, 10
  store i64 %26, i64* %3, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %14, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 45, i8* %36, align 1
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @reverse(i8* %42)
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local i32 @reverse(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
