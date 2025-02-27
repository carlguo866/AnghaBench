; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_transmit_management_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_transmit_management_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, i32 }
%struct.ieee80211_hdr = type { i32* }

@MGMT_FRAME_BODY_OFFSET = common dso_local global i32 0, align 4
@TX_PACKET_TYPE_MGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, %struct.ieee80211_hdr*, i32*, i32)* @atmel_transmit_management_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_transmit_management_frame(%struct.atmel_private* %0, %struct.ieee80211_hdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.atmel_private*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %5, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @MGMT_FRAME_BODY_OFFSET, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @find_tx_buff(%struct.atmel_private* %14, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %54

19:                                               ; preds = %4
  %20 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %21 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %25 = bitcast %struct.ieee80211_hdr* %24 to i32*
  %26 = load i32, i32* @MGMT_FRAME_BODY_OFFSET, align 4
  %27 = call i32 @atmel_copy_to_card(i32 %22, i64 %23, i32* %25, i32 %26)
  %28 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %29 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @MGMT_FRAME_BODY_OFFSET, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @atmel_copy_to_card(i32 %30, i64 %34, i32* %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %40 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %44 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 1
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @TX_PACKET_TYPE_MGMT, align 4
  %53 = call i32 @tx_update_descriptor(%struct.atmel_private* %43, i32 %49, i32 %50, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @find_tx_buff(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_copy_to_card(i32, i64, i32*, i32) #1

declare dso_local i32 @tx_update_descriptor(%struct.atmel_private*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
