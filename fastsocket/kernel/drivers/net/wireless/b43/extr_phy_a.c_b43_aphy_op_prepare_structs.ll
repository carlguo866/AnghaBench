; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_aphy_op_prepare_structs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_aphy_op_prepare_structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { %struct.b43_phy_a* }
%struct.b43_phy_a = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_aphy_op_prepare_structs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_aphy_op_prepare_structs(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_a*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  store %struct.b43_phy* %8, %struct.b43_phy** %3, align 8
  %9 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %10 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %9, i32 0, i32 0
  %11 = load %struct.b43_phy_a*, %struct.b43_phy_a** %10, align 8
  store %struct.b43_phy_a* %11, %struct.b43_phy_a** %4, align 8
  %12 = load %struct.b43_phy_a*, %struct.b43_phy_a** %4, align 8
  %13 = getelementptr inbounds %struct.b43_phy_a, %struct.b43_phy_a* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.b43_phy_a*, %struct.b43_phy_a** %4, align 8
  %16 = getelementptr inbounds %struct.b43_phy_a, %struct.b43_phy_a* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.b43_phy_a*, %struct.b43_phy_a** %4, align 8
  %19 = call i32 @memset(%struct.b43_phy_a* %18, i32 0, i32 16)
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.b43_phy_a*, %struct.b43_phy_a** %4, align 8
  %22 = getelementptr inbounds %struct.b43_phy_a, %struct.b43_phy_a* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.b43_phy_a*, %struct.b43_phy_a** %4, align 8
  %25 = getelementptr inbounds %struct.b43_phy_a, %struct.b43_phy_a* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  ret void
}

declare dso_local i32 @memset(%struct.b43_phy_a*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
