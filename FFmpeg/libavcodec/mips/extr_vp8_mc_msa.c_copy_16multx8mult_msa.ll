; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_copy_16multx8mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_copy_16multx8mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32)* @copy_16multx8mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_16multx8mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = ashr i32 %25, 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %73, %6
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %13, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %78

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** %9, align 8
  store i32* %33, i32** %16, align 8
  %34 = load i32, i32* %11, align 4
  %35 = ashr i32 %34, 3
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %40, %31
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %14, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load i32*, i32** %15, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* %23, align 4
  %50 = load i32, i32* %24, align 4
  %51 = call i32 @LD_UB8(i32* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 8, %52
  %54 = load i32*, i32** %15, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %15, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %23, align 4
  %64 = load i32, i32* %24, align 4
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @ST_UB8(i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32* %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 8, %68
  %70 = load i32*, i32** %16, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %16, align 8
  br label %36

73:                                               ; preds = %36
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 16
  store i32* %75, i32** %7, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 16
  store i32* %77, i32** %9, align 8
  br label %27

78:                                               ; preds = %27
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
