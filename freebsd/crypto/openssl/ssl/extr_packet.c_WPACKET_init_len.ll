; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_packet.c_WPACKET_init_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_packet.c_WPACKET_init_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WPACKET_init_len(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ossl_assert(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @maxmaxsize(i64 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @wpacket_intern_init_len(%struct.TYPE_4__* %24, i64 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @maxmaxsize(i64) #1

declare dso_local i32 @wpacket_intern_init_len(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
