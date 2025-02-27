; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_sparcv9cap.c_OPENSSL_instrument_bus.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_sparcv9cap.c_OPENSSL_instrument_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_sparcv9cap_P = common dso_local global i32* null, align 8
@SPARCV9_TICK_PRIVILEGED = common dso_local global i32 0, align 4
@SPARCV9_BLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OPENSSL_instrument_bus(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32*, i32** @OPENSSL_sparcv9cap_P, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SPARCV9_TICK_PRIVILEGED, align 4
  %10 = load i32, i32* @SPARCV9_BLK, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = load i32, i32* @SPARCV9_BLK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @_sparcv9_vis1_instrument_bus(i32* %16, i64 %17)
  store i64 %18, i64* %3, align 8
  br label %20

19:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i64 @_sparcv9_vis1_instrument_bus(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
