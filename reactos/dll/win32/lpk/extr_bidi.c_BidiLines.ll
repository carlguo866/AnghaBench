; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lpk/extr_bidi.c_BidiLines.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lpk/extr_bidi.c_BidiLines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*, i32, i32*)* @BidiLines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BidiLines(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i32* @HeapAlloc(i32 %19, i32 0, i32 %23)
  store i32* %24, i32** %17, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %7
  %28 = call i32 @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %107

29:                                               ; preds = %7
  br label %30

30:                                               ; preds = %100, %29
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @resolveLines(i32* %31, i32* %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @resolveWhitespace(i32 %35, i32* %36, i32* %37, i32 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %30
  %43 = load i32, i32* %15, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = call i32 @ScriptLayout(i32 %43, i32* %44, i32* null, i32* %45)
  store i32 0, i32* %18, align 4
  br label %47

47:                                               ; preds = %67, %42
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32*, i32** %17, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %57, i64 %65
  store i32 %56, i32* %66, align 4
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %18, align 4
  br label %47

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %30
  %72 = load i32, i32* %15, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %10, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %12, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %15, align 4
  br label %85

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = load i32*, i32** %14, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %14, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %11, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %30, label %103

103:                                              ; preds = %100
  %104 = call i32 (...) @GetProcessHeap()
  %105 = load i32*, i32** %17, align 8
  %106 = call i32 @HeapFree(i32 %104, i32 0, i32* %105)
  br label %107

107:                                              ; preds = %103, %27
  ret void
}

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @resolveLines(i32*, i32*, i32) #1

declare dso_local i32 @resolveWhitespace(i32, i32*, i32*, i32) #1

declare dso_local i32 @ScriptLayout(i32, i32*, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
