; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_intra_msa.c_ff_hor_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_intra_msa.c_ff_hor_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hor_16x16_msa(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 12
  store i32* %16, i32** %7, align 8
  store i32 4, i32* %9, align 4
  br label %17

17:                                               ; preds = %21, %4
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @LW(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 -4
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %26, 24
  %28 = call i64 @__msa_fill_b(i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 16
  %31 = call i64 @__msa_fill_b(i32 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 8
  %34 = call i64 @__msa_fill_b(i32 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @__msa_fill_b(i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ST_UB4(i64 %37, i64 %38, i64 %39, i64 %40, i32* %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 4, %44
  %46 = load i32*, i32** %5, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %5, align 8
  br label %17

49:                                               ; preds = %17
  ret void
}

declare dso_local i32 @LW(i32*) #1

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @ST_UB4(i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
