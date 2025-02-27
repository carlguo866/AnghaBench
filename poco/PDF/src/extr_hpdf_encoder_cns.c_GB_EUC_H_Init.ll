; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_cns.c_GB_EUC_H_Init.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_cns.c_GB_EUC_H_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32*, i64, i64, i64, i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@CMAP_ARRAY_GB_EUC_H = common dso_local global i32 0, align 4
@GB_EUC_NOTDEF_RANGE = common dso_local global i32 0, align 4
@EUC_CN_UNICODE_ARRAY = common dso_local global i32 0, align 4
@GB_EUC_IsLeadByte = common dso_local global i32 0, align 4
@GB_EUC_IsTrialByte = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Adobe\00", align 1
@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"GB1\00", align 1
@HPDF_ENCODER_TYPE_DOUBLE_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*)* @GB_EUC_H_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GB_EUC_H_Init(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = call i64 @HPDF_CMapEncoder_InitAttr(%struct.TYPE_11__* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @HPDF_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %2, align 8
  br label %95

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = load i32, i32* @CMAP_ARRAY_GB_EUC_H, align 4
  %19 = call i64 @HPDF_CMapEncoder_AddCMap(%struct.TYPE_11__* %17, i32 %18)
  %20 = load i64, i64* @HPDF_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %2, align 8
  br label %95

28:                                               ; preds = %12
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = call i64 @GB_EUC_AddCodeSpaceRange(%struct.TYPE_11__* %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* @HPDF_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %2, align 8
  br label %95

35:                                               ; preds = %28
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = load i32, i32* @GB_EUC_NOTDEF_RANGE, align 4
  %38 = call i64 @HPDF_CMapEncoder_AddNotDefRange(%struct.TYPE_11__* %36, i32 %37)
  %39 = load i64, i64* @HPDF_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %2, align 8
  br label %95

47:                                               ; preds = %35
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = load i32, i32* @EUC_CN_UNICODE_ARRAY, align 4
  %50 = call i32 @HPDF_CMapEncoder_SetUnicodeArray(%struct.TYPE_11__* %48, i32 %49)
  %51 = load i32, i32* @GB_EUC_IsLeadByte, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @GB_EUC_IsTrialByte, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @HPDF_StrCpy(i64 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @HPDF_StrCpy(i64 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 100, i32* %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 1, i32* %82, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 10, i32* %86, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 25360, i32* %90, align 4
  %91 = load i32, i32* @HPDF_ENCODER_TYPE_DOUBLE_BYTE, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i64, i64* @HPDF_OK, align 8
  store i64 %94, i64* %2, align 8
  br label %95

95:                                               ; preds = %47, %41, %33, %22, %10
  %96 = load i64, i64* %2, align 8
  ret i64 %96
}

declare dso_local i64 @HPDF_CMapEncoder_InitAttr(%struct.TYPE_11__*) #1

declare dso_local i64 @HPDF_CMapEncoder_AddCMap(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @GB_EUC_AddCodeSpaceRange(%struct.TYPE_11__*) #1

declare dso_local i64 @HPDF_CMapEncoder_AddNotDefRange(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @HPDF_CMapEncoder_SetUnicodeArray(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @HPDF_StrCpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
