; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_mac_cfg.c_rtl88eu_phy_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_mac_cfg.c_rtl88eu_phy_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@array_MAC_REG_8188E = common dso_local global i32* null, align 8
@REG_MAX_AGGR_NUM = common dso_local global i32 0, align 4
@MAX_AGGR_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl88eu_phy_mac_config(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load i32*, i32** @array_MAC_REG_8188E, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** @array_MAC_REG_8188E, align 8
  store i32* %8, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_write8(%struct.adapter* %14, i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %3, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = load i32, i32* @REG_MAX_AGGR_NUM, align 4
  %33 = load i32, i32* @MAX_AGGR_NUM, align 4
  %34 = call i32 @usb_write8(%struct.adapter* %31, i32 %32, i32 %33)
  ret i32 1
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
