; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double }

@test_properties.description = internal constant [9 x i8] c"winetest\00", align 1
@test_properties.frame = internal constant %struct.TYPE_3__ { double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02 }, align 8
@EmfTypeEmfPlusOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitPixel = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@TextRenderingHintSystemDefault = common dso_local global i32 0, align 4
@TextRenderingHintAntiAlias = common dso_local global i32 0, align 4
@PixelOffsetModeHighQuality = common dso_local global i32 0, align 4
@SmoothingModeAntiAlias = common dso_local global i32 0, align 4
@CompositingModeSourceOver = common dso_local global i32 0, align 4
@CompositingModeSourceCopy = common dso_local global i32 0, align 4
@CompositingQualityHighQuality = common dso_local global i32 0, align 4
@InterpolationModeDefault = common dso_local global i32 0, align 4
@InterpolationModeHighQuality = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"properties.emf\00", align 1
@properties_records = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_properties() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %9 = load i32, i32* @MetafileFrameUnitPixel, align 4
  %10 = call i32 @GdipRecordMetafile(i32 %7, i32 %8, %struct.TYPE_3__* @test_properties.frame, i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_properties.description, i64 0, i64 0), i32** %1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @Ok, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @expect(i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @DeleteDC(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @GdipGetImageGraphicsContext(i32* %16, i32** %2)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @Ok, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @expect(i32 %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @TextRenderingHintSystemDefault, align 4
  %23 = call i32 @GdipSetTextRenderingHint(i32* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @TextRenderingHintAntiAlias, align 4
  %29 = call i32 @GdipSetTextRenderingHint(i32* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @Ok, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @PixelOffsetModeHighQuality, align 4
  %35 = call i32 @GdipSetPixelOffsetMode(i32* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @Ok, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @PixelOffsetModeHighQuality, align 4
  %41 = call i32 @GdipSetPixelOffsetMode(i32* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @Ok, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @expect(i32 %42, i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @SmoothingModeAntiAlias, align 4
  %47 = call i32 @GdipSetSmoothingMode(i32* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @Ok, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @expect(i32 %48, i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @SmoothingModeAntiAlias, align 4
  %53 = call i32 @GdipSetSmoothingMode(i32* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @Ok, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @expect(i32 %54, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @CompositingModeSourceOver, align 4
  %59 = call i32 @GdipSetCompositingMode(i32* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @Ok, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @expect(i32 %60, i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @CompositingModeSourceCopy, align 4
  %65 = call i32 @GdipSetCompositingMode(i32* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* @Ok, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @expect(i32 %66, i32 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = load i32, i32* @CompositingQualityHighQuality, align 4
  %71 = call i32 @GdipSetCompositingQuality(i32* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @Ok, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @expect(i32 %72, i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = load i32, i32* @CompositingQualityHighQuality, align 4
  %77 = call i32 @GdipSetCompositingQuality(i32* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @Ok, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @expect(i32 %78, i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = load i32, i32* @InterpolationModeDefault, align 4
  %83 = call i32 @GdipSetInterpolationMode(i32* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @Ok, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @expect(i32 %84, i32 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = load i32, i32* @InterpolationModeHighQuality, align 4
  %89 = call i32 @GdipSetInterpolationMode(i32* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @Ok, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @expect(i32 %90, i32 %91)
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @GdipDeleteGraphics(i32* %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* @Ok, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @expect(i32 %95, i32 %96)
  %98 = call i32 @sync_metafile(i32** %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @GdipGetHemfFromMetafile(i32* %99, i32* %3)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* @Ok, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @expect(i32 %101, i32 %102)
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @properties_records, align 4
  %106 = call i32 @check_emfplus(i32 %104, i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @DeleteEnhMetaFile(i32 %107)
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @GdipDisposeImage(i32* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @Ok, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @expect(i32 %111, i32 %112)
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GdipRecordMetafile(i32, i32, %struct.TYPE_3__*, i32, i8*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipSetTextRenderingHint(i32*, i32) #1

declare dso_local i32 @GdipSetPixelOffsetMode(i32*, i32) #1

declare dso_local i32 @GdipSetSmoothingMode(i32*, i32) #1

declare dso_local i32 @GdipSetCompositingMode(i32*, i32) #1

declare dso_local i32 @GdipSetCompositingQuality(i32*, i32) #1

declare dso_local i32 @GdipSetInterpolationMode(i32*, i32) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @sync_metafile(i32**, i8*) #1

declare dso_local i32 @GdipGetHemfFromMetafile(i32*, i32*) #1

declare dso_local i32 @check_emfplus(i32, i32, i8*) #1

declare dso_local i32 @DeleteEnhMetaFile(i32) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
