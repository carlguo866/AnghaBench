; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_scomp_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_scomp_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_scomp = type { i32 }
%struct.zip_kernel_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zip_scomp_decompress(%struct.crypto_scomp* %0, i32* %1, i32 %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca %struct.crypto_scomp*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.zip_kernel_ctx*, align 8
  store %struct.crypto_scomp* %0, %struct.crypto_scomp** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = bitcast i8* %15 to %struct.zip_kernel_ctx*
  store %struct.zip_kernel_ctx* %16, %struct.zip_kernel_ctx** %14, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load %struct.zip_kernel_ctx*, %struct.zip_kernel_ctx** %14, align 8
  %22 = call i32 @zip_decompress(i32* %17, i32 %18, i32* %19, i32* %20, %struct.zip_kernel_ctx* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  ret i32 %23
}

declare dso_local i32 @zip_decompress(i32*, i32, i32*, i32*, %struct.zip_kernel_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
