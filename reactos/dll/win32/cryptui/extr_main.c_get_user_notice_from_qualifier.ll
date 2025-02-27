; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_get_user_notice_from_qualifier.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_get_user_notice_from_qualifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@X509_PKIX_POLICY_QUALIFIER_USERNOTICE = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @get_user_notice_from_qualifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_user_notice_from_qualifier(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* @X509_ASN_ENCODING, align 4
  %7 = load i32, i32* @X509_PKIX_POLICY_QUALIFIER_USERNOTICE, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %15 = call i64 @CryptDecodeObjectEx(i32 %6, i32 %7, i32 %10, i32 %13, i32 %14, i32* null, %struct.TYPE_7__** %4, i32* %5)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lstrlenW(i32 %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32* @HeapAlloc(i32 %18, i32 0, i32 %26)
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lstrcpyW(i32* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %17
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = call i32 @LocalFree(%struct.TYPE_7__* %37)
  br label %39

39:                                               ; preds = %36, %1
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i64 @CryptDecodeObjectEx(i32, i32, i32, i32, i32, i32*, %struct.TYPE_7__**, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @lstrcpyW(i32*, i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
