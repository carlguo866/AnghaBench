; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/common/extr_cons.c_getstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/common/extr_cons.c_getstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getstr(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %52, %2
  %9 = call i32 @xgetc(i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %12 [
    i32 21248, label %11
  ]

11:                                               ; preds = %8
  store i32 127, i32* %6, align 4
  br label %15

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %28 [
    i32 127, label %17
    i32 8, label %17
    i32 10, label %26
    i32 13, label %26
  ]

17:                                               ; preds = %15, %15
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ugt i8* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %5, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %17
  br label %52

26:                                               ; preds = %15, %15
  %27 = load i8*, i8** %5, align 8
  store i8 0, i8* %27, align 1
  ret void

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 32
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %32, 126
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = load i64, i64* %4, align 8
  %41 = sub i64 %40, 1
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  store i8 %45, i8* %46, align 1
  br label %48

48:                                               ; preds = %43, %34
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @putchar(i32 %49)
  br label %51

51:                                               ; preds = %48, %31, %28
  br label %52

52:                                               ; preds = %51, %25
  br label %8
}

declare dso_local i32 @xgetc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
