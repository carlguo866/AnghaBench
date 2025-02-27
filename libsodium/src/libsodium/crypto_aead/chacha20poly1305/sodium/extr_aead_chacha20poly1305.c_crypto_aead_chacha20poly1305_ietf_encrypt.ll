; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/extr_aead_chacha20poly1305.c_crypto_aead_chacha20poly1305_ietf_encrypt.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/extr_aead_chacha20poly1305.c_crypto_aead_chacha20poly1305_ietf_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_aead_chacha20poly1305_ietf_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8
@crypto_aead_chacha20poly1305_ietf_ABYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_aead_chacha20poly1305_ietf_encrypt(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64* %1, i64** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  store i64 0, i64* %19, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* @crypto_aead_chacha20poly1305_ietf_MESSAGEBYTES_MAX, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = call i32 (...) @sodium_misuse()
  br label %26

26:                                               ; preds = %24, %9
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8*, i8** %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = call i32 @crypto_aead_chacha20poly1305_ietf_encrypt_detached(i8* %27, i8* %30, i32* null, i8* %31, i64 %32, i8* %33, i64 %34, i8* %35, i8* %36, i8* %37)
  store i32 %38, i32* %20, align 4
  %39 = load i64*, i64** %11, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %26
  %42 = load i32, i32* %20, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @crypto_aead_chacha20poly1305_ietf_ABYTES, align 8
  %47 = add i64 %45, %46
  store i64 %47, i64* %19, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i64, i64* %19, align 8
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %26
  %52 = load i32, i32* %20, align 4
  ret i32 %52
}

declare dso_local i32 @sodium_misuse(...) #1

declare dso_local i32 @crypto_aead_chacha20poly1305_ietf_encrypt_detached(i8*, i8*, i32*, i8*, i64, i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
