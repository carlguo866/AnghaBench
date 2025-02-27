; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_gcm_setauthsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_gcm_setauthsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.mtk_aes_base_ctx = type { i32 }
%struct.mtk_aes_gcm_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32)* @mtk_aes_gcm_setauthsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_gcm_setauthsize(%struct.crypto_aead* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_aes_base_ctx*, align 8
  %7 = alloca %struct.mtk_aes_gcm_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %9 = call %struct.mtk_aes_base_ctx* @crypto_aead_ctx(%struct.crypto_aead* %8)
  store %struct.mtk_aes_base_ctx* %9, %struct.mtk_aes_base_ctx** %6, align 8
  %10 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %6, align 8
  %11 = call %struct.mtk_aes_gcm_ctx* @mtk_aes_gcm_ctx_cast(%struct.mtk_aes_base_ctx* %10)
  store %struct.mtk_aes_gcm_ctx* %11, %struct.mtk_aes_gcm_ctx** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %14 [
    i32 8, label %13
    i32 12, label %13
    i32 16, label %13
  ]

13:                                               ; preds = %2, %2, %2
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mtk_aes_gcm_ctx*, %struct.mtk_aes_gcm_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.mtk_aes_gcm_ctx, %struct.mtk_aes_gcm_ctx* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.mtk_aes_base_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.mtk_aes_gcm_ctx* @mtk_aes_gcm_ctx_cast(%struct.mtk_aes_base_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
