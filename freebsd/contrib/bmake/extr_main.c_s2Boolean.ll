; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_s2Boolean.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_s2Boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s2Boolean(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %24 [
    i32 0, label %11
    i32 48, label %12
    i32 70, label %12
    i32 102, label %12
    i32 78, label %12
    i32 110, label %12
    i32 79, label %14
    i32 111, label %14
  ]

11:                                               ; preds = %7
  br label %26

12:                                               ; preds = %7, %7, %7, %7, %7
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %4, align 4
  br label %26

14:                                               ; preds = %7, %7
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %21 [
    i32 70, label %19
    i32 102, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %26

24:                                               ; preds = %7
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %23, %12, %11
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
