; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aead.c_crypto_aead_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aead.c_crypto_aead_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.crypto_alg* }
%struct.crypto_alg = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.aead_request*)* }

@CRYPTO_TFM_NEED_KEY = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_aead_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %7 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %8 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %7)
  store %struct.crypto_aead* %8, %struct.crypto_aead** %3, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  store %struct.crypto_alg* %12, %struct.crypto_alg** %4, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %14 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %17 = call i32 @crypto_stats_get(%struct.crypto_alg* %16)
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %19 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %18)
  %20 = load i32, i32* @CRYPTO_TFM_NEED_KEY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOKEY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %33

26:                                               ; preds = %1
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %28 = call %struct.TYPE_4__* @crypto_aead_alg(%struct.crypto_aead* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.aead_request*)*, i32 (%struct.aead_request*)** %29, align 8
  %31 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %32 = call i32 %30(%struct.aead_request* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @crypto_stats_aead_encrypt(i32 %34, %struct.crypto_alg* %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_stats_get(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local %struct.TYPE_4__* @crypto_aead_alg(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_stats_aead_encrypt(i32, %struct.crypto_alg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
