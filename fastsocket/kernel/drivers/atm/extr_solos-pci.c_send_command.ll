; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pkt_hdr = type { i8*, i8*, i8*, i8* }

@BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Command is too big.  Dropping request\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to allocate sk_buff in send_command()\0A\00", align 1
@PKT_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solos_card*, i32, i8*, i64)* @send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_command(%struct.solos_card* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.solos_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.pkt_hdr*, align 8
  store %struct.solos_card* %0, %struct.solos_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i32, i32* @BUF_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 32
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.solos_card*, %struct.solos_card** %6, align 8
  %19 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, 32
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @alloc_skb(i64 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.solos_card*, %struct.solos_card** %6, align 8
  %32 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %65

36:                                               ; preds = %23
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = call i64 @skb_put(%struct.sk_buff* %37, i64 32)
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast i8* %39 to %struct.pkt_hdr*
  store %struct.pkt_hdr* %40, %struct.pkt_hdr** %11, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i8* @cpu_to_le16(i64 %41)
  %43 = load %struct.pkt_hdr*, %struct.pkt_hdr** %11, align 8
  %44 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = call i8* @cpu_to_le16(i64 0)
  %46 = load %struct.pkt_hdr*, %struct.pkt_hdr** %11, align 8
  %47 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = call i8* @cpu_to_le16(i64 0)
  %49 = load %struct.pkt_hdr*, %struct.pkt_hdr** %11, align 8
  %50 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* @PKT_COMMAND, align 8
  %52 = call i8* @cpu_to_le16(i64 %51)
  %53 = load %struct.pkt_hdr*, %struct.pkt_hdr** %11, align 8
  %54 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @skb_put(%struct.sk_buff* %55, i64 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @memcpy(i64 %57, i8* %58, i64 %59)
  %61 = load %struct.solos_card*, %struct.solos_card** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = call i32 @fpga_queue(%struct.solos_card* %61, i32 %62, %struct.sk_buff* %63, i32* null)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %36, %30, %17
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @fpga_queue(%struct.solos_card*, i32, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
