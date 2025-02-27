; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-neonbs-glue.c_aesbs_cbc_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-neonbs-glue.c_aesbs_cbc_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.aesbs_cbc_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.crypto_aes_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @aesbs_cbc_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aesbs_cbc_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aesbs_cbc_ctx*, align 8
  %9 = alloca %struct.crypto_aes_ctx, align 4
  %10 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.aesbs_cbc_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.aesbs_cbc_ctx* %12, %struct.aesbs_cbc_ctx** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %9, i32* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = udiv i32 %21, 4
  %23 = add i32 6, %22
  %24 = load %struct.aesbs_cbc_ctx*, %struct.aesbs_cbc_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.aesbs_cbc_ctx, %struct.aesbs_cbc_ctx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = call i32 (...) @kernel_neon_begin()
  %28 = load %struct.aesbs_cbc_ctx*, %struct.aesbs_cbc_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.aesbs_cbc_ctx, %struct.aesbs_cbc_ctx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aesbs_cbc_ctx*, %struct.aesbs_cbc_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.aesbs_cbc_ctx, %struct.aesbs_cbc_ctx* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @aesbs_convert_key(i32 %31, i32 %33, i32 %37)
  %39 = call i32 (...) @kernel_neon_end()
  %40 = load %struct.aesbs_cbc_ctx*, %struct.aesbs_cbc_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.aesbs_cbc_ctx, %struct.aesbs_cbc_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @crypto_cipher_setkey(i32 %42, i32* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %20, %18
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.aesbs_cbc_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @aesbs_convert_key(i32, i32, i32) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @crypto_cipher_setkey(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
