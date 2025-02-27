; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_get_cert_common_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_get_cert_common_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@get_cert_common_name.buf = internal global [1024 x i8] zeroinitializer, align 16
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@X509_NAME = common dso_local global i32 0, align 4
@CRYPT_DECODE_NOCOPY_FLAG = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@szOID_COMMON_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*)* @get_cert_common_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_cert_common_name(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = load i32, i32* @X509_ASN_ENCODING, align 4
  %9 = load i32, i32* @X509_NAME, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CRYPT_DECODE_NOCOPY_FLAG, align 4
  %23 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @CryptDecodeObjectEx(i32 %8, i32 %9, i32 %15, i32 %21, i32 %24, i32* null, i32** %4, i32* %5)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %1
  %29 = load i32, i32* @szOID_COMMON_NAME, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call %struct.TYPE_9__* @CertFindRDNAttr(i32 %29, i32* %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %7, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = call i32 @CertRDNValueToStrA(i32 %37, i32* %39, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_cert_common_name.buf, i64 0, i64 0), i32 1024)
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_cert_common_name.buf, i64 0, i64 0), i8** %3, align 8
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @LocalFree(i32* %42)
  br label %44

44:                                               ; preds = %41, %1
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i64 @CryptDecodeObjectEx(i32, i32, i32, i32, i32, i32*, i32**, i32*) #1

declare dso_local %struct.TYPE_9__* @CertFindRDNAttr(i32, i32*) #1

declare dso_local i32 @CertRDNValueToStrA(i32, i32*, i8*, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
