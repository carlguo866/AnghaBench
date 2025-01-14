; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_des_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_des_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.iproc_ctx_s = type { i32 }

@CIPHER_TYPE_DES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @des_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iproc_ctx_s*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.iproc_ctx_s* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.iproc_ctx_s* %11, %struct.iproc_ctx_s** %8, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @verify_ablkcipher_des_key(%struct.crypto_ablkcipher* %12, i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @CIPHER_TYPE_DES, align 4
  %21 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %8, align 8
  %22 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %17
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.iproc_ctx_s* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @verify_ablkcipher_des_key(%struct.crypto_ablkcipher*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
