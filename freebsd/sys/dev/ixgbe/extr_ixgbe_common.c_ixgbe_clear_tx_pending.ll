; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_clear_tx_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_clear_tx_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_HLREG0 = common dso_local global i32 0, align 4
@IXGBE_HLREG0_LPBK = common dso_local global i64 0, align 8
@IXGBE_PCI_DEVICE_STATUS = common dso_local global i32 0, align 4
@IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING = common dso_local global i32 0, align 4
@IXGBE_GCR_EXT = common dso_local global i32 0, align 4
@IXGBE_GCR_EXT_BUFFERS_CLEAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_clear_tx_pending(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = load i32, i32* @IXGBE_HLREG0, align 4
  %19 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %17, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = load i32, i32* @IXGBE_HLREG0, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @IXGBE_HLREG0_LPBK, align 8
  %24 = or i64 %22, %23
  %25 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i64 %24)
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %26)
  %28 = call i32 @msec_delay(i32 3)
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %30 = call i64 @ixgbe_pcie_timeout_poll(%struct.ixgbe_hw* %29)
  store i64 %30, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %53, %16
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = call i32 @usec_delay(i32 100)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = load i32, i32* @IXGBE_PCI_DEVICE_STATUS, align 4
  %39 = call i32 @IXGBE_READ_PCIE_WORD(%struct.ixgbe_hw* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IXGBE_REMOVED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %57

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %57

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %5, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %31

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56, %51, %45
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %59 = load i32, i32* @IXGBE_GCR_EXT, align 4
  %60 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %58, i32 %59)
  store i64 %60, i64* %3, align 8
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = load i32, i32* @IXGBE_GCR_EXT, align 4
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @IXGBE_GCR_EXT_BUFFERS_CLEAR, align 8
  %65 = or i64 %63, %64
  %66 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %61, i32 %62, i64 %65)
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %68 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %67)
  %69 = call i32 @usec_delay(i32 20)
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %71 = load i32, i32* @IXGBE_GCR_EXT, align 4
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %70, i32 %71, i64 %72)
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %75 = load i32, i32* @IXGBE_HLREG0, align 4
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %74, i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %57, %15
  ret void
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @ixgbe_pcie_timeout_poll(%struct.ixgbe_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @IXGBE_READ_PCIE_WORD(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @IXGBE_REMOVED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
