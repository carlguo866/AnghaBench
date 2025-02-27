; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_init_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_init_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scb = type { i32, i32*, i32, i32, i64* }

@SCB_WMECAP = common dso_local global i32 0, align 4
@SCB_HTCAP = common dso_local global i32 0, align 4
@NUMPRIO = common dso_local global i32 0, align 4
@SCB_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_init_scb(%struct.scb* %0) #0 {
  %2 = alloca %struct.scb*, align 8
  %3 = alloca i32, align 4
  store %struct.scb* %0, %struct.scb** %2, align 8
  %4 = load %struct.scb*, %struct.scb** %2, align 8
  %5 = call i32 @memset(%struct.scb* %4, i32 0, i32 32)
  %6 = load i32, i32* @SCB_WMECAP, align 4
  %7 = load i32, i32* @SCB_HTCAP, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.scb*, %struct.scb** %2, align 8
  %10 = getelementptr inbounds %struct.scb, %struct.scb* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NUMPRIO, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.scb*, %struct.scb** %2, align 8
  %17 = getelementptr inbounds %struct.scb, %struct.scb* %16, i32 0, i32 4
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load %struct.scb*, %struct.scb** %2, align 8
  %23 = getelementptr inbounds %struct.scb, %struct.scb* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 65535, i32* %27, align 4
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.scb*, %struct.scb** %2, align 8
  %33 = getelementptr inbounds %struct.scb, %struct.scb* %32, i32 0, i32 2
  store i32 65535, i32* %33, align 8
  %34 = load i32, i32* @SCB_MAGIC, align 4
  %35 = load %struct.scb*, %struct.scb** %2, align 8
  %36 = getelementptr inbounds %struct.scb, %struct.scb* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @memset(%struct.scb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
