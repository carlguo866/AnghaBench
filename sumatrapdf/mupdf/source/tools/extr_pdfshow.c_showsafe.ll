; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showsafe.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@showcolumn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @showsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showsafe(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %59, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %62

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %26

24:                                               ; preds = %17, %10
  %25 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* @showcolumn, align 4
  br label %53

26:                                               ; preds = %17
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sgt i32 %38, 126
  br i1 %39, label %40, label %44

40:                                               ; preds = %33, %26
  %41 = call i32 @putchar(i8 signext 46)
  %42 = load i32, i32* @showcolumn, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @showcolumn, align 4
  br label %52

44:                                               ; preds = %33
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @putchar(i8 signext %48)
  %50 = load i32, i32* @showcolumn, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @showcolumn, align 4
  br label %52

52:                                               ; preds = %44, %40
  br label %53

53:                                               ; preds = %52, %24
  %54 = load i32, i32* @showcolumn, align 4
  %55 = icmp eq i32 %54, 79
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* @showcolumn, align 4
  br label %58

58:                                               ; preds = %56, %53
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %6

62:                                               ; preds = %6
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
