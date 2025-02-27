; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/blufi/main/extr_blufi_security.c_blufi_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/blufi/main/extr_blufi_security.c_blufi_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@blufi_sec = common dso_local global %struct.TYPE_2__* null, align 8
@MBEDTLS_AES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blufi_aes_decrypt(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [16 x i32], align 16
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @blufi_sec, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memcpy(i32* %11, i32 %14, i32 4)
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @blufi_sec, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* @MBEDTLS_AES_DECRYPT, align 4
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @mbedtls_aes_crypt_cfb128(i32* %19, i32 %20, i32 %21, i64* %9, i32* %22, i32* %23, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mbedtls_aes_crypt_cfb128(i32*, i32, i32, i64*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
