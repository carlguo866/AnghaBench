; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_common.c_FindHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_common.c_FindHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32**)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindHandler(i32 %0, i32** %1, %struct.TYPE_3__* %2, i32 %3, void (i32*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (i32*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store void (i32*)* %4, void (i32*)** %10, align 8
  store i32 1, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %52

17:                                               ; preds = %5
  %18 = load i32**, i32*** %7, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %48, %17
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load i32*, i32** %13, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @_tcsicmp(i32* %26, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %25
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32**)*, i32 (i32, i32**)** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32**, i32*** %7, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  %46 = call i32 %41(i32 %43, i32** %45)
  store i32 %46, i32* %12, align 4
  br label %51

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %21

51:                                               ; preds = %35, %21
  br label %52

52:                                               ; preds = %51, %5
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load void (i32*)*, void (i32*)** %10, align 8
  %58 = load i32*, i32** %13, align 8
  call void %57(i32* %58)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %12, align 4
  ret i32 %60
}

declare dso_local i64 @_tcsicmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
