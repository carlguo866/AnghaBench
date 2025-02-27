; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_unpack_max_cee.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_unpack_max_cee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_dcb_config = type { %struct.ixgbe_dcb_tc_config* }
%struct.ixgbe_dcb_tc_config = type { i32 }

@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_dcb_unpack_max_cee(%struct.ixgbe_dcb_config* %0, i32* %1) #0 {
  %3 = alloca %struct.ixgbe_dcb_config*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ixgbe_dcb_tc_config*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_dcb_config* %0, %struct.ixgbe_dcb_config** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %7, i32 0, i32 0
  %9 = load %struct.ixgbe_dcb_tc_config*, %struct.ixgbe_dcb_tc_config** %8, align 8
  %10 = getelementptr inbounds %struct.ixgbe_dcb_tc_config, %struct.ixgbe_dcb_tc_config* %9, i64 0
  store %struct.ixgbe_dcb_tc_config* %10, %struct.ixgbe_dcb_tc_config** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.ixgbe_dcb_tc_config*, %struct.ixgbe_dcb_tc_config** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ixgbe_dcb_tc_config, %struct.ixgbe_dcb_tc_config* %16, i64 %18
  %20 = getelementptr inbounds %struct.ixgbe_dcb_tc_config, %struct.ixgbe_dcb_tc_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %11

29:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
