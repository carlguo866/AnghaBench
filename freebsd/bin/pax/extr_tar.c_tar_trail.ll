; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_tar_trail.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_tar_trail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLKMULT = common dso_local global i32 0, align 4
@NULLCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tar_trail(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %23, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @BLKMULT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %26

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %9

26:                                               ; preds = %21, %9
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @BLKMULT, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %42

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @NULLCNT, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %42

41:                                               ; preds = %34, %31
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %40, %30
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
