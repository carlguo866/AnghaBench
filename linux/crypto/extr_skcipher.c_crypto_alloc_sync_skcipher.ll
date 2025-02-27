; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_alloc_sync_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_alloc_sync_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_sync_skcipher = type { i32 }
%struct.crypto_skcipher = type { i32 }

@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@crypto_skcipher_type2 = common dso_local global i32 0, align 4
@MAX_SYNC_SKCIPHER_REQSIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_sync_skcipher*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_skcipher*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %10 = load i32, i32* %7, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.crypto_skcipher* @crypto_alloc_tfm(i8* %12, i32* @crypto_skcipher_type2, i32 %13, i32 %14)
  store %struct.crypto_skcipher* %15, %struct.crypto_skcipher** %8, align 8
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %17 = call i32 @IS_ERR(%struct.crypto_skcipher* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %3
  %20 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %21 = call i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher* %20)
  %22 = load i64, i64* @MAX_SYNC_SKCIPHER_REQSIZE, align 8
  %23 = icmp sgt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %29 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.crypto_sync_skcipher* @ERR_PTR(i32 %31)
  store %struct.crypto_sync_skcipher* %32, %struct.crypto_sync_skcipher** %4, align 8
  br label %36

33:                                               ; preds = %19, %3
  %34 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %35 = bitcast %struct.crypto_skcipher* %34 to %struct.crypto_sync_skcipher*
  store %struct.crypto_sync_skcipher* %35, %struct.crypto_sync_skcipher** %4, align 8
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %4, align 8
  ret %struct.crypto_sync_skcipher* %37
}

declare dso_local %struct.crypto_skcipher* @crypto_alloc_tfm(i8*, i32*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_free_skcipher(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_sync_skcipher* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
