; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_aead_do_encrypt_final.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_aead_do_encrypt_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_crypto_context_t = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EVP_CTRL_GCM_GET_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @aead_do_encrypt_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aead_do_encrypt_final(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aead_crypto_context_t*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.aead_crypto_context_t*
  store %struct.aead_crypto_context_t* %12, %struct.aead_crypto_context_t** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %5, align 8
  %16 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %5, align 8
  %22 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = call i32 @EVP_EncryptFinal_ex(i32 %23, i32* %26, i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %5, align 8
  %35 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @EVP_CTRL_GCM_GET_TAG, align 4
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @EVP_CIPHER_CTX_ctrl(i32 %36, i32 %37, i32 %39, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @assert(i32 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  ret i64 %49
}

declare dso_local i32 @EVP_EncryptFinal_ex(i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
