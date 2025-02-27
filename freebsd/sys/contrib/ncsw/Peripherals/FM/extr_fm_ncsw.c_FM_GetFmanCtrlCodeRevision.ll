; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FM_GetFmanCtrlCodeRevision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FM_GetFmanCtrlCodeRevision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8*, i8*, i64, i64, i64* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i64 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_NULL_POINTER = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_GET_FMAN_CTRL_CODE_REV = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"running in guest-mode without IPC!\00", align 1
@FM_MM_IMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_GetFmanCtrlCodeRevision(i64 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = load i32, i32* @E_INVALID_HANDLE, align 4
  %18 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__* %16, i32 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = load i32, i32* @E_NULL_POINTER, align 4
  %21 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__* %19, i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NCSW_MASTER_ID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 5
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %27
  %35 = call i32 @memset(%struct.TYPE_10__* %10, i32 0, i32 12)
  %36 = call i32 @memset(%struct.TYPE_10__* %11, i32 0, i32 12)
  %37 = load i32, i32* @FM_GET_FMAN_CTRL_CODE_REV, align 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  store i32 52, i32* %12, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = bitcast %struct.TYPE_10__* %10 to i8**
  %45 = bitcast %struct.TYPE_10__* %11 to i8**
  %46 = call i32 @XX_IpcSendMessage(i64 %43, i8** %44, i32 4, i8** %45, i32* %12, i32* null, i32* null)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @E_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %34
  %50 = load i32, i32* @MINOR, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** @NO_MSG, align 8
  %53 = call i32 @RETURN_ERROR(i32 %50, i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %49, %34
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 52
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @MAJOR, align 4
  %60 = load i32, i32* @E_INVALID_VALUE, align 4
  %61 = call i32 @RETURN_ERROR(i32 %59, i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %54
  %63 = bitcast %struct.TYPE_11__* %13 to i8**
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i8** %63, i32 %65, i32 48)
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %3, align 4
  br label %136

81:                                               ; preds = %27, %2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NCSW_MASTER_ID, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* @MINOR, align 4
  %89 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %90 = call i32 @RETURN_ERROR(i32 %88, i32 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %81
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FM_MM_IMEM, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i64 @UINT_TO_PTR(i64 %97)
  %99 = inttoptr i64 %98 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %7, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @WRITE_UINT32(i32 %102, i32 4)
  br label %104

104:                                              ; preds = %110, %92
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GET_UINT32(i32 %107)
  %109 = icmp ne i32 %108, 4
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %104

111:                                              ; preds = %104
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @GET_UINT32(i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, -65536
  %118 = lshr i32 %117, 16
  %119 = zext i32 %118 to i64
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %8, align 4
  %123 = and i32 %122, 65280
  %124 = ashr i32 %123, 8
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %8, align 4
  %130 = and i32 %129, 255
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* @E_OK, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %111, %62
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @XX_IpcSendMessage(i64, i8**, i32, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i8**, i32, i32) #1

declare dso_local i64 @UINT_TO_PTR(i64) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @GET_UINT32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
