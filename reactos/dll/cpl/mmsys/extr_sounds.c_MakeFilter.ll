; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_MakeFilter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_MakeFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNICODE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @MakeFilter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @UNICODE_NULL, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @wcslen(i32* %11)
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 124
  br label %18

18:                                               ; preds = %9, %1
  %19 = phi i1 [ false, %1 ], [ %17, %9 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32*, i32** %2, align 8
  store i32* %22, i32** %3, align 8
  br label %23

23:                                               ; preds = %36, %18
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UNICODE_NULL, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 124
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @UNICODE_NULL, align 4
  %34 = load i32*, i32** %3, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %3, align 8
  br label %23

39:                                               ; preds = %23
  %40 = load i32*, i32** %2, align 8
  ret i32* %40
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @wcslen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
