; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_8x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_8x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_bi_4t_8x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_bi_4t_8x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = sext i32 %34 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %9, align 8
  %39 = call i32 @__msa_ldi_h(i32 128)
  store i32 %39, i32* %33, align 4
  %40 = load i32, i32* %33, align 4
  %41 = shl i32 %40, 6
  store i32 %41, i32* %33, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @LD_SH(i32* %42)
  store i32 %43, i32* %32, align 4
  %44 = load i32, i32* %32, align 4
  %45 = load i32, i32* %30, align 4
  %46 = load i32, i32* %31, align 4
  %47 = call i32 @SPLATI_H2_SH(i32 %44, i32 0, i32 1, i32 %45, i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @LD_SB3(i32* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 3, %54
  %56 = load i32*, i32** %9, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %9, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %19, align 4
  %62 = call i32 @XORI_B3_128_SB(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %26, align 4
  %68 = load i32, i32* %28, align 4
  %69 = call i32 @ILVR_B2_SB(i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %21, align 4
  %74 = call i32 @LD_SB2(i32* %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %23, align 4
  %79 = call i32 @LD_SH2(i32* %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %21, align 4
  %82 = call i32 @XORI_B2_128_SB(i32 %80, i32 %81)
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %27, align 4
  %88 = load i32, i32* %29, align 4
  %89 = call i32 @ILVR_B2_SB(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %33, align 4
  store i32 %90, i32* %24, align 4
  %91 = load i32, i32* %26, align 4
  %92 = load i32, i32* %27, align 4
  %93 = load i32, i32* %30, align 4
  %94 = load i32, i32* %31, align 4
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %24, align 4
  %97 = call i32 @DPADD_SB2_SH(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %33, align 4
  store i32 %98, i32* %25, align 4
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* %29, align 4
  %101 = load i32, i32* %30, align 4
  %102 = load i32, i32* %31, align 4
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* %25, align 4
  %105 = call i32 @DPADD_SB2_SH(i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %23, align 4
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* %25, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* %25, align 4
  %112 = call i32 @HEVC_BI_RND_CLIP2(i32 %106, i32 %107, i32 %108, i32 %109, i32 7, i32 %110, i32 %111)
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %24, align 4
  %115 = call i64 @__msa_pckev_b(i32 %113, i32 %114)
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %24, align 4
  %117 = load i32, i32* %24, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @ST_D2(i32 %117, i32 0, i32 1, i32* %118, i32 %119)
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
