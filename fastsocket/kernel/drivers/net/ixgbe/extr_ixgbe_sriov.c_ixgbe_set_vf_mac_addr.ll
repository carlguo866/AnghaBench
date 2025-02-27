; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"VF %d attempted to set invalid mac\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [104 x i8] c"VF %d attempted to override administratively set MAC address\0AReload the VF driver to resume operations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64*, i64)* @ixgbe_set_vf_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_vf_mac_addr(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  %11 = bitcast i64* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @is_valid_ether_addr(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @drv, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @e_warn(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i32 -1, i32* %4, align 4
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i64 @memcmp(i32 %35, i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load i32, i32* @drv, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @e_warn(i32 %41, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  store i32 -1, i32* %4, align 4
  br label %51

44:                                               ; preds = %28, %19
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @ixgbe_set_vf_mac(%struct.ixgbe_adapter* %45, i64 %46, i32* %47)
  %49 = icmp slt i64 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %40, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @e_warn(i32, i8*, i64) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i64 @ixgbe_set_vf_mac(%struct.ixgbe_adapter*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
