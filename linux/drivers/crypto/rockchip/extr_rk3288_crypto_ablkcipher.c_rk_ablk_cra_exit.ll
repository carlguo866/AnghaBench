; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_ablk_cra_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_ablk_cra_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.rk_cipher_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @rk_ablk_cra_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_ablk_cra_exit(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.rk_cipher_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %4 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %5 = call %struct.rk_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %4)
  store %struct.rk_cipher_ctx* %5, %struct.rk_cipher_ctx** %3, align 8
  %6 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @free_page(i64 %10)
  %12 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %15, align 8
  %17 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 %16(%struct.TYPE_2__* %19)
  ret void
}

declare dso_local %struct.rk_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
