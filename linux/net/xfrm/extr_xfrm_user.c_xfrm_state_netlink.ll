; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_state_netlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_state_netlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.xfrm_dump_info = type { i64, i32, %struct.sk_buff*, %struct.sk_buff* }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.xfrm_state*, i32)* @xfrm_state_netlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @xfrm_state_netlink(%struct.sk_buff* %0, %struct.xfrm_state* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_dump_info, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.sk_buff* @nlmsg_new(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sk_buff* @ERR_PTR(i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %8, i32 0, i32 3
  store %struct.sk_buff* %21, %struct.sk_buff** %22, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %8, i32 0, i32 2
  store %struct.sk_buff* %23, %struct.sk_buff** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %8, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %29 = call i32 @dump_one_state(%struct.xfrm_state* %28, i32 0, %struct.xfrm_dump_info* %8)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.sk_buff* @ERR_PTR(i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %4, align 8
  br label %39

37:                                               ; preds = %20
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %4, align 8
  br label %39

39:                                               ; preds = %37, %32, %16
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %40
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @dump_one_state(%struct.xfrm_state*, i32, %struct.xfrm_dump_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
