; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aesni-intel_glue.c_aesni_skcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aesni-intel_glue.c_aesni_skcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @aesni_skcipher_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aesni_skcipher_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %8 = call i32 @crypto_skcipher_tfm(%struct.crypto_skcipher* %7)
  %9 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %10 = call i32 @crypto_skcipher_ctx(%struct.crypto_skcipher* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @aes_set_key_common(i32 %8, i32 %10, i32* %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @aes_set_key_common(i32, i32, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
