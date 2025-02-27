; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_ghash-ce-glue.c_ghash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_ghash-ce-glue.c_ghash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.ghash_key = type { i32, i32, i32, i32, i32 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32)* @ghash_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_setkey(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ghash_key*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %11 = call %struct.ghash_key* @crypto_shash_ctx(%struct.crypto_shash* %10)
  store %struct.ghash_key* %11, %struct.ghash_key** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %17 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %18 = call i32 @crypto_shash_set_flags(%struct.crypto_shash* %16, i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load %struct.ghash_key*, %struct.ghash_key** %8, align 8
  %23 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %22, i32 0, i32 1
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %26 = call i32 @memcpy(i32* %23, i32* %24, i32 %25)
  %27 = load %struct.ghash_key*, %struct.ghash_key** %8, align 8
  %28 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ghash_key*, %struct.ghash_key** %8, align 8
  %31 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %30, i32 0, i32 1
  %32 = call i32 @ghash_reflect(i32 %29, i32* %31)
  %33 = load %struct.ghash_key*, %struct.ghash_key** %8, align 8
  %34 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ghash_key*, %struct.ghash_key** %8, align 8
  %37 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %36, i32 0, i32 1
  %38 = call i32 @gf128mul_lle(i32* %9, i32* %37)
  %39 = load %struct.ghash_key*, %struct.ghash_key** %8, align 8
  %40 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ghash_reflect(i32 %41, i32* %9)
  %43 = load %struct.ghash_key*, %struct.ghash_key** %8, align 8
  %44 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %43, i32 0, i32 1
  %45 = call i32 @gf128mul_lle(i32* %9, i32* %44)
  %46 = load %struct.ghash_key*, %struct.ghash_key** %8, align 8
  %47 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ghash_reflect(i32 %48, i32* %9)
  %50 = load %struct.ghash_key*, %struct.ghash_key** %8, align 8
  %51 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %50, i32 0, i32 1
  %52 = call i32 @gf128mul_lle(i32* %9, i32* %51)
  %53 = load %struct.ghash_key*, %struct.ghash_key** %8, align 8
  %54 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ghash_reflect(i32 %55, i32* %9)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %21, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.ghash_key* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_set_flags(%struct.crypto_shash*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ghash_reflect(i32, i32*) #1

declare dso_local i32 @gf128mul_lle(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
