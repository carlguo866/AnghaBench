; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@supported_init = common dso_local global i32 0, align 4
@mbedtls_cipher_definitions = common dso_local global %struct.TYPE_5__* null, align 8
@mbedtls_cipher_supported = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mbedtls_cipher_list() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @supported_init, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mbedtls_cipher_definitions, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %1, align 8
  %7 = load i32*, i32** @mbedtls_cipher_supported, align 8
  store i32* %7, i32** %2, align 8
  br label %8

8:                                                ; preds = %13, %5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 1
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %2, align 8
  store i32 %18, i32* %19, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load i32*, i32** %2, align 8
  store i32 0, i32* %22, align 4
  store i32 1, i32* @supported_init, align 4
  br label %23

23:                                               ; preds = %21, %0
  %24 = load i32*, i32** @mbedtls_cipher_supported, align 8
  ret i32* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
