; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_mac.c_ath9k_hw_setuprxdesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_mac.c_ath9k_hw_setuprxdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5416_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR_BufLen = common dso_local global i32 0, align 4
@ATH9K_RXDESC_INTREQ = common dso_local global i32 0, align 4
@AR_RxIntrReq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_setuprxdesc(%struct.ath_hw* %0, %struct.ath_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ar5416_desc*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %11 = call %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc* %10)
  store %struct.ar5416_desc* %11, %struct.ar5416_desc** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @AR_BufLen, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %16 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ATH9K_RXDESC_INTREQ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* @AR_RxIntrReq, align 4
  %23 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %24 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %4
  %28 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %29 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @memset(i32* %30, i32 0, i32 4)
  ret void
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
