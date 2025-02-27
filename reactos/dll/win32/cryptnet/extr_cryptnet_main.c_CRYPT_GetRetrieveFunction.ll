; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptnet/extr_cryptnet_main.c_CRYPT_GetRetrieveFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptnet/extr_cryptnet_main.c_CRYPT_GetRetrieveFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@__const.CRYPT_GetRetrieveFunction.components = private unnamed_addr constant %struct.TYPE_3__ { i32 20, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"(%s, %p, %p)\0A\00", align 1
@FTP_RetrieveEncodedObjectW = common dso_local global i32* null, align 8
@HTTP_RetrieveEncodedObjectW = common dso_local global i32* null, align 8
@File_RetrieveEncodedObjectW = common dso_local global i32* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@CRYPT_GetRetrieveFunction.set = internal global i32* null, align 8
@SCHEME_OID_RETRIEVE_ENCODED_OBJECTW_FUNC = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32**, i64*)* @CRYPT_GetRetrieveFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_GetRetrieveFunction(i32 %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_3__* @__const.CRYPT_GetRetrieveFunction.components to i8*), i64 20, i1 false)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @debugstr_w(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = load i32**, i32*** %5, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %14, i32** %15, i64* %16)
  %18 = load i32**, i32*** %5, align 8
  store i32* null, i32** %18, align 8
  %19 = load i64*, i64** %6, align 8
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @InternetCrackUrlW(i32 %21, i32 0, i32 0, %struct.TYPE_3__* %7)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %37 [
    i32 129, label %28
    i32 128, label %31
    i32 130, label %34
  ]

28:                                               ; preds = %25
  %29 = load i32*, i32** @FTP_RetrieveEncodedObjectW, align 8
  %30 = load i32**, i32*** %5, align 8
  store i32* %29, i32** %30, align 8
  br label %83

31:                                               ; preds = %25
  %32 = load i32*, i32** @HTTP_RetrieveEncodedObjectW, align 8
  %33 = load i32**, i32*** %5, align 8
  store i32* %32, i32** %33, align 8
  br label %83

34:                                               ; preds = %25
  %35 = load i32*, i32** @File_RetrieveEncodedObjectW, align 8
  %36 = load i32**, i32*** %5, align 8
  store i32* %35, i32** %36, align 8
  br label %83

37:                                               ; preds = %25
  %38 = load i32, i32* @CP_ACP, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WideCharToMultiByte(i32 %38, i32 0, i32 %40, i32 %42, i32* null, i32 0, i32* null, i32* null)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = call i32* @CryptMemAlloc(i32 %47)
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load i32*, i32** @CRYPT_GetRetrieveFunction.set, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @SCHEME_OID_RETRIEVE_ENCODED_OBJECTW_FUNC, align 4
  %56 = call i32* @CryptInitOIDFunctionSet(i32 %55, i32 0)
  store i32* %56, i32** @CRYPT_GetRetrieveFunction.set, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @CP_ACP, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @WideCharToMultiByte(i32 %58, i32 0, i32 %60, i32 %62, i32* %63, i32 %64, i32* null, i32* null)
  %66 = load i32*, i32** @CRYPT_GetRetrieveFunction.set, align 8
  %67 = load i32, i32* @X509_ASN_ENCODING, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32**, i32*** %5, align 8
  %70 = bitcast i32** %69 to i8**
  %71 = load i64*, i64** %6, align 8
  %72 = call i64 @CryptGetOIDFunctionAddress(i32* %66, i32 %67, i32* %68, i32 0, i8** %70, i64* %71)
  store i64 %72, i64* %8, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @CryptMemFree(i32* %73)
  br label %79

75:                                               ; preds = %46
  %76 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %77 = call i32 @SetLastError(i32 %76)
  %78 = load i64, i64* @FALSE, align 8
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %75, %57
  br label %82

80:                                               ; preds = %37
  %81 = load i64, i64* @FALSE, align 8
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %80, %79
  br label %83

83:                                               ; preds = %82, %34, %31, %28
  br label %84

84:                                               ; preds = %83, %3
  %85 = load i64, i64* %8, align 8
  %86 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* %8, align 8
  ret i64 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, i64, ...) #2

declare dso_local i32 @debugstr_w(i32) #2

declare dso_local i64 @InternetCrackUrlW(i32, i32, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32* @CryptMemAlloc(i32) #2

declare dso_local i32* @CryptInitOIDFunctionSet(i32, i32) #2

declare dso_local i64 @CryptGetOIDFunctionAddress(i32*, i32, i32*, i32, i8**, i64*) #2

declare dso_local i32 @CryptMemFree(i32*) #2

declare dso_local i32 @SetLastError(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
