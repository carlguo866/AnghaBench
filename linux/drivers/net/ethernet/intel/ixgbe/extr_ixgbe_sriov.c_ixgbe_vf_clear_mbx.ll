; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_vf_clear_mbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_vf_clear_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_VFMAILBOX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i64)* @ixgbe_vf_clear_mbx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_vf_clear_mbx(%struct.ixgbe_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 0
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %19, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @IXGBE_VFMAILBOX_SIZE, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @IXGBE_PFMBMEM(i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw* %14, i32 %16, i64 %17, i32 0)
  br label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %6, align 8
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %23)
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw*, i32, i64, i32) #1

declare dso_local i32 @IXGBE_PFMBMEM(i64) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
