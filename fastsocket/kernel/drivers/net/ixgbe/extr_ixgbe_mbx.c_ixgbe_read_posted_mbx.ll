; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_mbx.c_ixgbe_read_posted_mbx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_mbx.c_ixgbe_read_posted_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mbx_info }
%struct.ixgbe_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_MBX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i32, i32)* @ixgbe_read_posted_mbx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_read_posted_mbx(%struct.ixgbe_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_mbx_info*, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  store %struct.ixgbe_mbx_info* %12, %struct.ixgbe_mbx_info** %9, align 8
  %13 = load i64, i64* @IXGBE_ERR_MBX, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %15 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)** %16, align 8
  %18 = icmp ne i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %38

20:                                               ; preds = %4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @ixgbe_poll_for_msg(%struct.ixgbe_hw* %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %20
  %27 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %28 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)** %29, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %32 = bitcast %struct.ixgbe_hw* %31 to %struct.ixgbe_hw.0*
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 %30(%struct.ixgbe_hw.0* %32, i32* %33, i32 %34, i32 %35)
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %26, %20
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i64, i64* %10, align 8
  ret i64 %39
}

declare dso_local i64 @ixgbe_poll_for_msg(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
