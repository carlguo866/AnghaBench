; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_realign_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_realign_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }

@QLGE_SB_PAD = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @ql_realign_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_realign_skb(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i64, i64* @QLGE_SB_PAD, align 8
  %10 = load i64, i64* @NET_IP_ALIGN, align 8
  %11 = sub nsw i64 %9, %10
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = sub i64 0, %11
  %16 = getelementptr i8, i8* %14, i64 %15
  store i8* %16, i8** %13, align 8
  %17 = load i64, i64* @QLGE_SB_PAD, align 8
  %18 = load i64, i64* @NET_IP_ALIGN, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %26, i8* %27, i32 %28)
  ret void
}

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
