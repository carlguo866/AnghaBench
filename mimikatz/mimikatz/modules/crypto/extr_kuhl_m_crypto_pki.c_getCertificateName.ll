; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_getCertificateName.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_getCertificateName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_X500_NAME_STR = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getCertificateName(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* @X509_ASN_ENCODING, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @CERT_X500_NAME_STR, align 4
  %8 = call i32 @CertNameToStr(i32 %5, i32 %6, i32 %7, i32* null, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load i32, i32* @LPTR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i64 @LocalAlloc(i32 %12, i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %11
  %21 = load i32, i32* @X509_ASN_ENCODING, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @CERT_X500_NAME_STR, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @CertNameToStr(i32 %21, i32 %22, i32 %23, i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @LocalFree(i32* %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %3, align 8
  br label %32

32:                                               ; preds = %28, %20
  br label %33

33:                                               ; preds = %32, %11
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32 @CertNameToStr(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i64 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
