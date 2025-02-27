; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxResetRendering.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxResetRendering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GX_BM_BLEND = common dso_local global i32 0, align 4
@GX_BL_SRCALPHA = common dso_local global i32 0, align 4
@GX_BL_INVSRCALPHA = common dso_local global i32 0, align 4
@GX_LO_CLEAR = common dso_local global i32 0, align 4
@GX_VTXFMT0 = common dso_local global i32 0, align 4
@GX_VA_POS = common dso_local global i32 0, align 4
@GX_POS_XY = common dso_local global i32 0, align 4
@GX_S16 = common dso_local global i32 0, align 4
@GX_VA_CLR0 = common dso_local global i32 0, align 4
@GX_CLR_RGBA = common dso_local global i32 0, align 4
@GX_RGBA8 = common dso_local global i32 0, align 4
@GX_VA_TEX0 = common dso_local global i32 0, align 4
@GX_TEX_ST = common dso_local global i32 0, align 4
@GX_F32 = common dso_local global i32 0, align 4
@GX_DIRECT = common dso_local global i32 0, align 4
@GX_TEVSTAGE0 = common dso_local global i32 0, align 4
@GX_MODULATE = common dso_local global i32 0, align 4
@GX_TEXCOORD0 = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@GX_COLOR0A0 = common dso_local global i32 0, align 4
@GX_BM_NONE = common dso_local global i32 0, align 4
@GX_POS_XYZ = common dso_local global i32 0, align 4
@GX_INDEX8 = common dso_local global i32 0, align 4
@square = common dso_local global i32 0, align 4
@GX_REPLACE = common dso_local global i32 0, align 4
@GX_COLORNULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @gxResetRendering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxResetRendering(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i32 (...) @GX_ClearVtxDesc()
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %1
  %7 = load i32, i32* @GX_BM_BLEND, align 4
  %8 = load i32, i32* @GX_BL_SRCALPHA, align 4
  %9 = load i32, i32* @GX_BL_INVSRCALPHA, align 4
  %10 = load i32, i32* @GX_LO_CLEAR, align 4
  %11 = call i32 @GX_SetBlendMode(i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* @GX_VTXFMT0, align 4
  %13 = load i32, i32* @GX_VA_POS, align 4
  %14 = load i32, i32* @GX_POS_XY, align 4
  %15 = load i32, i32* @GX_S16, align 4
  %16 = call i32 @GX_SetVtxAttrFmt(i32 %12, i32 %13, i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* @GX_VTXFMT0, align 4
  %18 = load i32, i32* @GX_VA_CLR0, align 4
  %19 = load i32, i32* @GX_CLR_RGBA, align 4
  %20 = load i32, i32* @GX_RGBA8, align 4
  %21 = call i32 @GX_SetVtxAttrFmt(i32 %17, i32 %18, i32 %19, i32 %20, i32 0)
  %22 = load i32, i32* @GX_VTXFMT0, align 4
  %23 = load i32, i32* @GX_VA_TEX0, align 4
  %24 = load i32, i32* @GX_TEX_ST, align 4
  %25 = load i32, i32* @GX_F32, align 4
  %26 = call i32 @GX_SetVtxAttrFmt(i32 %22, i32 %23, i32 %24, i32 %25, i32 0)
  %27 = load i32, i32* @GX_VA_POS, align 4
  %28 = load i32, i32* @GX_DIRECT, align 4
  %29 = call i32 @GX_SetVtxDesc(i32 %27, i32 %28)
  %30 = load i32, i32* @GX_VA_TEX0, align 4
  %31 = load i32, i32* @GX_DIRECT, align 4
  %32 = call i32 @GX_SetVtxDesc(i32 %30, i32 %31)
  %33 = load i32, i32* @GX_VA_CLR0, align 4
  %34 = load i32, i32* @GX_DIRECT, align 4
  %35 = call i32 @GX_SetVtxDesc(i32 %33, i32 %34)
  %36 = load i32, i32* @GX_TEVSTAGE0, align 4
  %37 = load i32, i32* @GX_MODULATE, align 4
  %38 = call i32 @GX_SetTevOp(i32 %36, i32 %37)
  %39 = load i32, i32* @GX_TEVSTAGE0, align 4
  %40 = load i32, i32* @GX_TEXCOORD0, align 4
  %41 = load i32, i32* @GX_TEXMAP0, align 4
  %42 = load i32, i32* @GX_COLOR0A0, align 4
  %43 = call i32 @GX_SetTevOrder(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = call i32 @GX_SetNumTexGens(i32 1)
  %45 = call i32 @GX_SetNumChans(i32 1)
  br label %81

46:                                               ; preds = %1
  %47 = load i32, i32* @GX_BM_NONE, align 4
  %48 = load i32, i32* @GX_BL_SRCALPHA, align 4
  %49 = load i32, i32* @GX_BL_INVSRCALPHA, align 4
  %50 = load i32, i32* @GX_LO_CLEAR, align 4
  %51 = call i32 @GX_SetBlendMode(i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @GX_VTXFMT0, align 4
  %53 = load i32, i32* @GX_VA_POS, align 4
  %54 = load i32, i32* @GX_POS_XYZ, align 4
  %55 = load i32, i32* @GX_S16, align 4
  %56 = call i32 @GX_SetVtxAttrFmt(i32 %52, i32 %53, i32 %54, i32 %55, i32 0)
  %57 = load i32, i32* @GX_VTXFMT0, align 4
  %58 = load i32, i32* @GX_VA_TEX0, align 4
  %59 = load i32, i32* @GX_TEX_ST, align 4
  %60 = load i32, i32* @GX_F32, align 4
  %61 = call i32 @GX_SetVtxAttrFmt(i32 %57, i32 %58, i32 %59, i32 %60, i32 0)
  %62 = load i32, i32* @GX_VA_POS, align 4
  %63 = load i32, i32* @GX_INDEX8, align 4
  %64 = call i32 @GX_SetVtxDesc(i32 %62, i32 %63)
  %65 = load i32, i32* @GX_VA_TEX0, align 4
  %66 = load i32, i32* @GX_DIRECT, align 4
  %67 = call i32 @GX_SetVtxDesc(i32 %65, i32 %66)
  %68 = load i32, i32* @GX_VA_POS, align 4
  %69 = load i32, i32* @square, align 4
  %70 = call i32 @GX_SetArray(i32 %68, i32 %69, i32 12)
  %71 = load i32, i32* @GX_TEVSTAGE0, align 4
  %72 = load i32, i32* @GX_REPLACE, align 4
  %73 = call i32 @GX_SetTevOp(i32 %71, i32 %72)
  %74 = load i32, i32* @GX_TEVSTAGE0, align 4
  %75 = load i32, i32* @GX_TEXCOORD0, align 4
  %76 = load i32, i32* @GX_TEXMAP0, align 4
  %77 = load i32, i32* @GX_COLORNULL, align 4
  %78 = call i32 @GX_SetTevOrder(i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = call i32 @GX_SetNumTexGens(i32 1)
  %80 = call i32 @GX_SetNumChans(i32 0)
  br label %81

81:                                               ; preds = %46, %6
  %82 = call i32 (...) @GX_Flush()
  ret void
}

declare dso_local i32 @GX_ClearVtxDesc(...) #1

declare dso_local i32 @GX_SetBlendMode(i32, i32, i32, i32) #1

declare dso_local i32 @GX_SetVtxAttrFmt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_SetVtxDesc(i32, i32) #1

declare dso_local i32 @GX_SetTevOp(i32, i32) #1

declare dso_local i32 @GX_SetTevOrder(i32, i32, i32, i32) #1

declare dso_local i32 @GX_SetNumTexGens(i32) #1

declare dso_local i32 @GX_SetNumChans(i32) #1

declare dso_local i32 @GX_SetArray(i32, i32, i32) #1

declare dso_local i32 @GX_Flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
