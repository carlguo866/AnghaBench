; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_xmtfifo_sz_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_xmtfifo_sz_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i64* }

@NFIFO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_b_xmtfifo_sz_get(%struct.brcms_hardware* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_hardware*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @NFIFO, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %22

14:                                               ; preds = %3
  %15 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %16 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
