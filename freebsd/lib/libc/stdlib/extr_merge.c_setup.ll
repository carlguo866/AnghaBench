; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_merge.c_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_merge.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup(i32* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %22 = load i64, i64* %9, align 8
  %23 = mul i64 %22, 2
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load i64, i64* %8, align 8
  %26 = icmp ule i64 %25, 5
  br i1 %26, label %27, label %41

27:                                               ; preds = %5
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @insertionsort(i32* %28, i32 %30, i64 %31, i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = mul i64 %35, %36
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32*, i32** %7, align 8
  %40 = call i32** @EVAL(i32* %39)
  store i32* %38, i32** %40, align 8
  br label %111

41:                                               ; preds = %5
  %42 = load i64, i64* %8, align 8
  %43 = and i64 %42, 1
  %44 = add i64 4, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %47, %49
  %51 = load i64, i64* %9, align 8
  %52 = mul i64 %50, %51
  %53 = getelementptr inbounds i32, i32* %46, i64 %52
  %54 = load i32, i32* %11, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @insertionsort(i32* %53, i32 %54, i64 %55, i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = mul i64 %59, %63
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  store i32* %65, i32** %20, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = mul i64 %67, %68
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  %79 = call i32** @EVAL(i32* %78)
  store i32* %70, i32** %79, align 8
  %80 = load i32*, i32** %6, align 8
  store i32* %80, i32** %16, align 8
  %81 = load i32*, i32** %7, align 8
  store i32* %81, i32** %21, align 8
  br label %82

82:                                               ; preds = %106, %41
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %20, align 8
  %85 = icmp ult i32* %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load i32*, i32** %21, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32*, i32** %21, align 8
  %92 = call i32** @EVAL(i32* %91)
  store i32* %90, i32** %92, align 8
  store i32* %90, i32** %21, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = call i64 @CMP(i32* %93, i32* %96)
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %86
  %100 = load i32*, i32** %16, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = call i32 @swap(i32* %100, i32* %103)
  br label %105

105:                                              ; preds = %99, %86
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %16, align 8
  br label %82

111:                                              ; preds = %27, %82
  ret void
}

declare dso_local i32 @insertionsort(i32*, i32, i64, i32) #1

declare dso_local i32** @EVAL(i32*) #1

declare dso_local i64 @CMP(i32*, i32*) #1

declare dso_local i32 @swap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
