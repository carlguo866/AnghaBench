; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_me_cmp_alpha.c_pix_abs8x8_mvi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_me_cmp_alpha.c_pix_abs8x8_mvi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32, i32)* @pix_abs8x8_mvi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_abs8x8_mvi(i8* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = ptrtoint i32* %16 to i64
  %18 = and i64 %17, 7
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @ldq(i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @uldq(i32* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i64 @perr(i32 %26, i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %21, label %45

45:                                               ; preds = %41
  br label %72

46:                                               ; preds = %5
  br label %47

47:                                               ; preds = %67, %46
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @ldq(i32* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @ldq(i32* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i64 @perr(i32 %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %8, align 8
  br label %67

67:                                               ; preds = %47
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %47, label %71

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i32 @ldq(i32*) #1

declare dso_local i32 @uldq(i32*) #1

declare dso_local i64 @perr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
