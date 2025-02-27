; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_associate_resp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_associate_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee802154_addr = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.net_device*, %struct.ieee802154_addr*, i32, i32)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE802154_ATTR_STATUS = common dso_local global i64 0, align 8
@IEEE802154_ATTR_DEST_HW_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_DEST_SHORT_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802154_associate_resp(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ieee802154_addr, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @IEEE802154_ATTR_STATUS, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @IEEE802154_ATTR_DEST_HW_ADDR, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @IEEE802154_ATTR_DEST_SHORT_ADDR, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26, %18, %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %95

37:                                               ; preds = %26
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = call %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info* %38)
  store %struct.net_device* %39, %struct.net_device** %6, align 8
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %95

45:                                               ; preds = %37
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = call %struct.TYPE_4__* @ieee802154_mlme_ops(%struct.net_device* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.net_device*, %struct.ieee802154_addr*, i32, i32)*, i32 (%struct.net_device*, %struct.ieee802154_addr*, i32, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.net_device*, %struct.ieee802154_addr*, i32, i32)* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %91

52:                                               ; preds = %45
  %53 = load i32, i32* @IEEE802154_ADDR_LONG, align 4
  %54 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @IEEE802154_ATTR_DEST_HW_ADDR, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nla_get_hwaddr(i32 %60)
  %62 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = call i32 (...) @rtnl_lock()
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = call i32 (...) @rtnl_unlock()
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call %struct.TYPE_4__* @ieee802154_mlme_ops(%struct.net_device* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.net_device*, %struct.ieee802154_addr*, i32, i32)*, i32 (%struct.net_device*, %struct.ieee802154_addr*, i32, i32)** %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %77 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @IEEE802154_ATTR_DEST_SHORT_ADDR, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @nla_get_shortaddr(i32 %81)
  %83 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %84 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @IEEE802154_ATTR_STATUS, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @nla_get_u8(i32 %88)
  %90 = call i32 %74(%struct.net_device* %75, %struct.ieee802154_addr* %7, i32 %82, i32 %89)
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %52, %51
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = call i32 @dev_put(%struct.net_device* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %42, %34
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info*) #1

declare dso_local %struct.TYPE_4__* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i32 @nla_get_hwaddr(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @nla_get_shortaddr(i32) #1

declare dso_local i32 @nla_get_u8(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
