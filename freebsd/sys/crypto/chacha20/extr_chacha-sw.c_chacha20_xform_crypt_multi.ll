; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/chacha20/extr_chacha-sw.c_chacha20_xform_crypt_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/chacha20/extr_chacha-sw.c_chacha20_xform_crypt_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chacha_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64)* @chacha20_xform_crypt_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha20_xform_crypt_multi(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.chacha_ctx*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.chacha_ctx*
  store %struct.chacha_ctx* %9, %struct.chacha_ctx** %7, align 8
  %10 = load %struct.chacha_ctx*, %struct.chacha_ctx** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @chacha_encrypt_bytes(%struct.chacha_ctx* %10, i32* %11, i32* %12, i64 %13)
  ret void
}

declare dso_local i32 @chacha_encrypt_bytes(%struct.chacha_ctx*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
