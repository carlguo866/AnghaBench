; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_box/curve25519xchacha20poly1305/extr_box_seal_curve25519xchacha20poly1305.c__crypto_box_curve25519xchacha20poly1305_seal_nonce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_box/curve25519xchacha20poly1305/extr_box_seal_curve25519xchacha20poly1305.c__crypto_box_curve25519xchacha20poly1305_seal_nonce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_curve25519xchacha20poly1305_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @_crypto_box_curve25519xchacha20poly1305_seal_nonce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_crypto_box_curve25519xchacha20poly1305_seal_nonce(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @crypto_box_curve25519xchacha20poly1305_NONCEBYTES, align 4
  %9 = call i32 @crypto_generichash_init(i32* %7, i32* null, i32 0, i32 %8)
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES, align 4
  %12 = call i32 @crypto_generichash_update(i32* %7, i8* %10, i32 %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES, align 4
  %15 = call i32 @crypto_generichash_update(i32* %7, i8* %13, i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @crypto_box_curve25519xchacha20poly1305_NONCEBYTES, align 4
  %18 = call i32 @crypto_generichash_final(i32* %7, i8* %16, i32 %17)
  ret i32 0
}

declare dso_local i32 @crypto_generichash_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @crypto_generichash_update(i32*, i8*, i32) #1

declare dso_local i32 @crypto_generichash_final(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
