; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_BlackPreservingKOnlyIntents.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_BlackPreservingKOnlyIntents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@cmsSigCmykData = common dso_local global i64 0, align 8
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@BlackPreservingGrayOnlySampler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*, i32*, i32*, i32*, i32)* @BlackPreservingKOnlyIntents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BlackPreservingKOnlyIntents(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [256 x i32], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 255
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %7
  store i32* null, i32** %8, align 8
  br label %172

28:                                               ; preds = %24
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %20, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TranslateNonICCIntents(i32 %38)
  %40 = load i32, i32* %20, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %20, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %20, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @cmsGetColorSpace(i32 %47, i32 %50)
  %52 = load i64, i64* @cmsSigCmykData, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @cmsGetColorSpace(i32 %55, i32 %61)
  %63 = load i64, i64* @cmsSigCmykData, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %54, %46
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %69 = load i32*, i32** %12, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32* @DefaultICCintents(i32 %66, i32 %67, i32* %68, i32* %69, i32* %70, i32* %71, i32 %72)
  store i32* %73, i32** %8, align 8
  br label %172

74:                                               ; preds = %54
  %75 = call i32 @memset(%struct.TYPE_3__* %16, i32 0, i32 16)
  %76 = load i32, i32* %9, align 4
  %77 = call i32* @cmsPipelineAlloc(i32 %76, i32 4, i32 4)
  store i32* %77, i32** %17, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32* null, i32** %8, align 8
  br label %172

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %85 = load i32*, i32** %12, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32* @DefaultICCintents(i32 %82, i32 %83, i32* %84, i32* %85, i32* %86, i32* %87, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32* %89, i32** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %146

95:                                               ; preds = %81
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %99 = load i32*, i32** %12, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32* @_cmsBuildKToneCurve(i32 %96, i32 4096, i32 %97, i32* %98, i32* %99, i32* %100, i32* %101, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32* %103, i32** %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %146

109:                                              ; preds = %95
  %110 = load i32, i32* %9, align 4
  %111 = load i64, i64* @cmsSigCmykData, align 8
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @_cmsReasonableGridpointsByColorspace(i32 %110, i64 %111, i32 %112)
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %21, align 4
  %116 = call i32* @cmsStageAllocCLut16bit(i32 %114, i32 %115, i32 4, i32 4, i32* null)
  store i32* %116, i32** %19, align 8
  %117 = load i32*, i32** %19, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  br label %146

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  %122 = load i32*, i32** %17, align 8
  %123 = load i32, i32* @cmsAT_BEGIN, align 4
  %124 = load i32*, i32** %19, align 8
  %125 = call i32 @cmsPipelineInsertStage(i32 %121, i32* %122, i32 %123, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %146

128:                                              ; preds = %120
  %129 = load i32, i32* %9, align 4
  %130 = load i32*, i32** %19, align 8
  %131 = load i32, i32* @BlackPreservingGrayOnlySampler, align 4
  %132 = bitcast %struct.TYPE_3__* %16 to i8*
  %133 = call i32 @cmsStageSampleCLut16bit(i32 %129, i32* %130, i32 %131, i8* %132, i32 0)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %128
  br label %146

136:                                              ; preds = %128
  %137 = load i32, i32* %9, align 4
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @cmsPipelineFree(i32 %137, i32* %139)
  %141 = load i32, i32* %9, align 4
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @cmsFreeToneCurve(i32 %141, i32* %143)
  %145 = load i32*, i32** %17, align 8
  store i32* %145, i32** %8, align 8
  br label %172

146:                                              ; preds = %135, %127, %119, %108, %94
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @cmsPipelineFree(i32 %151, i32* %153)
  br label %155

155:                                              ; preds = %150, %146
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i32, i32* %9, align 4
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @cmsFreeToneCurve(i32 %160, i32* %162)
  br label %164

164:                                              ; preds = %159, %155
  %165 = load i32*, i32** %17, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* %9, align 4
  %169 = load i32*, i32** %17, align 8
  %170 = call i32 @cmsPipelineFree(i32 %168, i32* %169)
  br label %171

171:                                              ; preds = %167, %164
  store i32* null, i32** %8, align 8
  br label %172

172:                                              ; preds = %171, %136, %80, %65, %27
  %173 = load i32*, i32** %8, align 8
  ret i32* %173
}

declare dso_local i32 @TranslateNonICCIntents(i32) #1

declare dso_local i64 @cmsGetColorSpace(i32, i32) #1

declare dso_local i32* @DefaultICCintents(i32, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32* @_cmsBuildKToneCurve(i32, i32, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @_cmsReasonableGridpointsByColorspace(i32, i64, i32) #1

declare dso_local i32* @cmsStageAllocCLut16bit(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #1

declare dso_local i32 @cmsStageSampleCLut16bit(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
