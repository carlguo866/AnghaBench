; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecrdsa.c_ecrdsa_max_size.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecrdsa.c_ecrdsa_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.ecrdsa_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*)* @ecrdsa_max_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecrdsa_max_size(%struct.crypto_akcipher* %0) #0 {
  %2 = alloca %struct.crypto_akcipher*, align 8
  %3 = alloca %struct.ecrdsa_ctx*, align 8
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %2, align 8
  %4 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %2, align 8
  %5 = call %struct.ecrdsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %4)
  store %struct.ecrdsa_ctx* %5, %struct.ecrdsa_ctx** %3, align 8
  %6 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

declare dso_local %struct.ecrdsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
