; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawFrameControl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawFrameControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MyDrawFrameControl(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %31 [
    i32 130, label %13
    i32 129, label %19
    i32 128, label %25
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @MyDrawFrameButton(i32 %14, i32 %15, i32 %16, i32* %17)
  store i32 %18, i32* %6, align 4
  br label %33

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @MyDrawFrameCaption(i32 %20, i32 %21, i32 %22, i32* %23)
  store i32 %24, i32* %6, align 4
  br label %33

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @MyDrawFrameScroll(i32 %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %25, %19, %13
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @MyDrawFrameButton(i32, i32, i32, i32*) #1

declare dso_local i32 @MyDrawFrameCaption(i32, i32, i32, i32*) #1

declare dso_local i32 @MyDrawFrameScroll(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
