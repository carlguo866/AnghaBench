; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_grab_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_grab_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher_spawn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@crypto_skcipher_type2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_grab_skcipher(%struct.crypto_skcipher_spawn* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.crypto_skcipher_spawn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.crypto_skcipher_spawn* %0, %struct.crypto_skcipher_spawn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.crypto_skcipher_spawn*, %struct.crypto_skcipher_spawn** %5, align 8
  %10 = getelementptr inbounds %struct.crypto_skcipher_spawn, %struct.crypto_skcipher_spawn* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32* @crypto_skcipher_type2, i32** %11, align 8
  %12 = load %struct.crypto_skcipher_spawn*, %struct.crypto_skcipher_spawn** %5, align 8
  %13 = getelementptr inbounds %struct.crypto_skcipher_spawn, %struct.crypto_skcipher_spawn* %12, i32 0, i32 0
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @crypto_grab_spawn(%struct.TYPE_2__* %13, i8* %14, i32 %15, i32 %16)
  ret i32 %17
}

declare dso_local i32 @crypto_grab_spawn(%struct.TYPE_2__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
