; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_setkey.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)* }

@MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_CIPHER_VARIABLE_KEY_LEN = common dso_local global i32 0, align 4
@MBEDTLS_ENCRYPT = common dso_local global i64 0, align 8
@MBEDTLS_MODE_CFB = common dso_local global i64 0, align 8
@MBEDTLS_MODE_CTR = common dso_local global i64 0, align 8
@MBEDTLS_DECRYPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_setkey(%struct.TYPE_7__* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = icmp eq %struct.TYPE_7__* null, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp eq %struct.TYPE_6__* null, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %4
  %18 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %18, i32* %5, align 4
  br label %103

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MBEDTLS_CIPHER_VARIABLE_KEY_LEN, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %38, i32* %5, align 4
  br label %103

39:                                               ; preds = %28, %19
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* @MBEDTLS_ENCRYPT, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %39
  %50 = load i64, i64* @MBEDTLS_MODE_CFB, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %50, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load i64, i64* @MBEDTLS_MODE_CTR, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %58, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %57, %49, %39
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %72(i32 %75, i8* %76, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %103

81:                                               ; preds = %57
  %82 = load i64, i64* @MBEDTLS_DECRYPT, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %92(i32 %95, i8* %96, i32 %99)
  store i32 %100, i32* %5, align 4
  br label %103

101:                                              ; preds = %81
  %102 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %85, %65, %37, %17
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
