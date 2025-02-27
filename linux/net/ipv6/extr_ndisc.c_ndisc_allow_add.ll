; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_allow_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_allow_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"IPv6 is disabled on this device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netlink_ext_ack*)* @ndisc_allow_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndisc_allow_add(%struct.net_device* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca %struct.inet6_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %7)
  store %struct.inet6_dev* %8, %struct.inet6_dev** %6, align 8
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %10 = icmp ne %struct.inet6_dev* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %13 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %2
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %19 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %21

20:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
