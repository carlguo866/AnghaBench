; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_phy_maskset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_phy_maskset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.b43_wldev*, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_phy_maskset(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.b43_wldev*, i32, i32, i32)*, i32 (%struct.b43_wldev*, i32, i32, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.b43_wldev*, i32, i32, i32)* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %18 = call i32 @assert_mac_suspended(%struct.b43_wldev* %17)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.b43_wldev*, i32, i32, i32)*, i32 (%struct.b43_wldev*, i32, i32, i32)** %23, align 8
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 %24(%struct.b43_wldev* %25, i32 %26, i32 %27, i32 %28)
  br label %41

30:                                               ; preds = %4
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @b43_phy_read(%struct.b43_wldev* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @b43_phy_write(%struct.b43_wldev* %31, i32 %32, i32 %39)
  br label %41

41:                                               ; preds = %30, %16
  ret void
}

declare dso_local i32 @assert_mac_suspended(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
