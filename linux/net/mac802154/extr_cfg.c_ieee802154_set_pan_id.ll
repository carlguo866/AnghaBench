; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_cfg.c_ieee802154_set_pan_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_cfg.c_ieee802154_set_pan_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpan_phy = type { i32 }
%struct.wpan_dev = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpan_phy*, %struct.wpan_dev*, i64)* @ieee802154_set_pan_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_set_pan_id(%struct.wpan_phy* %0, %struct.wpan_dev* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpan_phy*, align 8
  %6 = alloca %struct.wpan_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.wpan_phy* %0, %struct.wpan_phy** %5, align 8
  store %struct.wpan_dev* %1, %struct.wpan_dev** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call i32 (...) @ASSERT_RTNL()
  %10 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %11 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %18 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mac802154_wpan_update_llsec(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %26 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @mac802154_wpan_update_llsec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
