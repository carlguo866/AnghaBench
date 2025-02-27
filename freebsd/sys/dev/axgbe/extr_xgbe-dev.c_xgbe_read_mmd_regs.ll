; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_read_mmd_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_read_mmd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@PCS_MMD_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32, i32)* @xgbe_read_mmd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_read_mmd_regs(%struct.xgbe_prv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MII_ADDR_C45, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MII_ADDR_C45, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %8, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 65535
  %26 = or i32 %23, %25
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 1
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %33 = load i32, i32* @PCS_MMD_SELECT, align 4
  %34 = shl i32 %33, 2
  %35 = load i32, i32* %8, align 4
  %36 = lshr i32 %35, 8
  %37 = call i32 @XPCS_IOWRITE(%struct.xgbe_prv_data* %32, i32 %34, i32 %36)
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 255
  %41 = shl i32 %40, 2
  %42 = call i32 @XPCS_IOREAD(%struct.xgbe_prv_data* %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 1
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XPCS_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XPCS_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
