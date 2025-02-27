; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_parse_eth_type_from_nlattrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_parse_eth_type_from_nlattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sw_flow_match = type { i32 }
%struct.nlattr = type { i32 }

@OVS_KEY_ATTR_ETHERTYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"EtherType %x is less than min %x\00", align 1
@ETH_P_802_3_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@eth = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_match*, i32*, %struct.nlattr**, i32, i32)* @parse_eth_type_from_nlattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_eth_type_from_nlattrs(%struct.sw_flow_match* %0, i32* %1, %struct.nlattr** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sw_flow_match*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sw_flow_match* %0, %struct.sw_flow_match** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %14 = load i64, i64* @OVS_KEY_ATTR_ETHERTYPE, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = call i32 @nla_get_be16(%struct.nlattr* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i32 @htons(i32 65535)
  store i32 %21, i32* %12, align 4
  br label %35

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @eth_proto_is_802_3(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @ntohs(i32 %28)
  %30 = load i32, i32* @ETH_P_802_3_MIN, align 4
  %31 = call i32 @OVS_NLERR(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %48

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.sw_flow_match*, %struct.sw_flow_match** %7, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eth, i32 0, i32 0), align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @SW_FLOW_KEY_PUT(%struct.sw_flow_match* %36, i32 %37, i32 %38, i32 %39)
  %41 = load i64, i64* @OVS_KEY_ATTR_ETHERTYPE, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %44
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %35, %26
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @eth_proto_is_802_3(i32) #1

declare dso_local i32 @OVS_NLERR(i32, i8*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @SW_FLOW_KEY_PUT(%struct.sw_flow_match*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
