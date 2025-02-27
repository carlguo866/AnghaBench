; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_sm4.c_sm4_cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_sm4.c_sm4_cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM4_encrypt = common dso_local global i64 0, align 8
@SM4_decrypt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32*, i8*, i32)* @sm4_cbc_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm4_cbc_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %6
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i64, i64* @SM4_encrypt, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @CRYPTO_cbc128_encrypt(i8* %16, i8* %17, i64 %18, i32* %19, i8* %20, i32 %22)
  br label %33

24:                                               ; preds = %6
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* @SM4_decrypt, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @CRYPTO_cbc128_decrypt(i8* %25, i8* %26, i64 %27, i32* %28, i8* %29, i32 %31)
  br label %33

33:                                               ; preds = %24, %15
  ret void
}

declare dso_local i32 @CRYPTO_cbc128_encrypt(i8*, i8*, i64, i32*, i8*, i32) #1

declare dso_local i32 @CRYPTO_cbc128_decrypt(i8*, i8*, i64, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
