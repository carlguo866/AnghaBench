; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_aead_setauthsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_aead_setauthsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32)* @aead_setauthsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_setauthsize(%struct.crypto_aead* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %8 = call i32 @crypto_aead_maxauthsize(%struct.crypto_aead* %7)
  %9 = ashr i32 %8, 2
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = lshr i32 %10, 2
  %12 = icmp ult i32 %11, 1
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = lshr i32 %14, 2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %13, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @aead_setup(%struct.crypto_aead* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @crypto_aead_maxauthsize(%struct.crypto_aead*) #1

declare dso_local i32 @aead_setup(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
