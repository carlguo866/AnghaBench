; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_mpegvideoencdsp_msa.c_sum_u8src_16width_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_mpegvideoencdsp_msa.c_sum_u8src_16width_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @sum_u8src_16width_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sum_u8src_16width_msa(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @LD_UB8(i32* %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 8, %33
  %35 = load i32*, i32** %3, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %3, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %21, align 4
  %48 = call i32 @LD_UB8(i32* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @HADD_UB4_UB(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @HADD_UB4_UB(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @HADD_UB4_UB(i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %21, align 4
  %84 = call i32 @HADD_UB4_UB(i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @HADD_UH_U32(i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @HADD_UH_U32(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @HADD_UH_U32(i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @HADD_UH_U32(i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @HADD_UH_U32(i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @HADD_UH_U32(i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @HADD_UH_U32(i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @HADD_UH_U32(i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @HADD_UH_U32(i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @HADD_UH_U32(i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @HADD_UH_U32(i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @HADD_UH_U32(i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %18, align 4
  %132 = call i32 @HADD_UH_U32(i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %19, align 4
  %136 = call i32 @HADD_UH_U32(i32 %135)
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %20, align 4
  %140 = call i32 @HADD_UH_U32(i32 %139)
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %21, align 4
  %144 = call i32 @HADD_UH_U32(i32 %143)
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HADD_UB4_UB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HADD_UH_U32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
