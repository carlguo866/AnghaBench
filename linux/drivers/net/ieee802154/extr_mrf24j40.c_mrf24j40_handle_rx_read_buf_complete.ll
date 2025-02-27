; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_handle_rx_read_buf_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_handle_rx_read_buf_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrf24j40 = type { i32*, i32, i32, i32* }
%struct.sk_buff = type { i32 }

@RX_FIFO_SIZE = common dso_local global i32 0, align 4
@IEEE802154_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to allocate skb\0A\00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mrf24j40_handle_rx_read_buf_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrf24j40_handle_rx_read_buf_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mrf24j40*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.mrf24j40*
  store %struct.mrf24j40* %10, %struct.mrf24j40** %3, align 8
  %11 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %12 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @RX_FIFO_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %21 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @memcpy(i32* %19, i32 %22, i32 %23)
  %25 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %26 = call i32 @mrf24j40_handle_rx_read_buf_unlock(%struct.mrf24j40* %25)
  %27 = load i32, i32* @IEEE802154_MTU, align 4
  %28 = call %struct.sk_buff* @dev_alloc_skb(i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %33 = call i32 @printdev(%struct.mrf24j40* %32)
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %44

35:                                               ; preds = %1
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @skb_put_data(%struct.sk_buff* %36, i32* %19, i32 %37)
  %39 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %40 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i32 @ieee802154_rx_irqsafe(i32 %41, %struct.sk_buff* %42, i32 0)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %35, %31
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %48 [
    i32 0, label %47
    i32 1, label %47
  ]

47:                                               ; preds = %44, %44
  ret void

48:                                               ; preds = %44
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @mrf24j40_handle_rx_read_buf_unlock(%struct.mrf24j40*) #2

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @printdev(%struct.mrf24j40*) #2

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #2

declare dso_local i32 @ieee802154_rx_irqsafe(i32, %struct.sk_buff*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
