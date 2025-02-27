; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_mk_data_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_mk_data_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dn_scp = type { i32, i32 }
%struct.dn_skb_cb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sock*, %struct.sk_buff*, i32)* @dn_nsp_mk_data_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dn_nsp_mk_data_header(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_scp*, align 8
  %8 = alloca %struct.dn_skb_cb*, align 8
  %9 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.dn_scp* @DN_SK(%struct.sock* %10)
  store %struct.dn_scp* %11, %struct.dn_scp** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %12)
  store %struct.dn_skb_cb* %13, %struct.dn_skb_cb** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %8, align 8
  %17 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32* @dn_mk_ack_header(%struct.sock* %14, %struct.sk_buff* %15, i32 %18, i32 11, i32 %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %26 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %8, align 8
  %29 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %31 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %30, i32 0, i32 1
  %32 = call i32 @seq_add(i32* %31, i32 1)
  br label %42

33:                                               ; preds = %3
  %34 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %35 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %8, align 8
  %38 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %40 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %39, i32 0, i32 0
  %41 = call i32 @seq_add(i32* %40, i32 1)
  br label %42

42:                                               ; preds = %33, %24
  %43 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %8, align 8
  %44 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_le16(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32*, i32** %9, align 8
  ret i32* %49
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @dn_mk_ack_header(%struct.sock*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @seq_add(i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
