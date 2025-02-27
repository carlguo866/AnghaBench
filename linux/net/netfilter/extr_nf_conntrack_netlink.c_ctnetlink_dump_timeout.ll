; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }

@HZ = common dso_local global i64 0, align 8
@CTA_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*)* @ctnetlink_dump_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_timeout(%struct.sk_buff* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %7 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %8 = call i64 @nf_ct_expires(%struct.nf_conn* %7)
  %9 = load i64, i64* @HZ, align 8
  %10 = sdiv i64 %8, %9
  store i64 %10, i64* %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load i32, i32* @CTA_TIMEOUT, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @htonl(i64 %13)
  %15 = call i64 @nla_put_be32(%struct.sk_buff* %11, i32 %12, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

19:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @nf_ct_expires(%struct.nf_conn*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
