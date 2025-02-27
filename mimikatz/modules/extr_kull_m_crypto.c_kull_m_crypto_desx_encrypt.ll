; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_desx_encrypt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_desx_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CALG_DES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_crypto_desx_encrypt(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %9, align 4
  store i32 8, i32* %11, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @RtlCopyMemory(i64 %13, i64 %14, i32 8)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CALG_DES, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @kull_m_crypto_hkey(i32 %16, i32 %17, i64 %18, i32 8, i32 0, i32* %10, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %22, 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %8, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @CryptEncrypt(i32 %30, i32 0, i32 %31, i32 0, i64 %32, i32* %11, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 16
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %8, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %36, %21
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @CryptDestroyKey(i32 %46)
  br label %48

48:                                               ; preds = %45, %4
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @RtlCopyMemory(i64, i64, i32) #1

declare dso_local i64 @kull_m_crypto_hkey(i32, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @CryptEncrypt(i32, i32, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
