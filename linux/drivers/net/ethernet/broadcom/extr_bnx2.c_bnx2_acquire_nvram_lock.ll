; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_acquire_nvram_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_acquire_nvram_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_NVM_SW_ARB = common dso_local global i32 0, align 4
@BNX2_NVM_SW_ARB_ARB_REQ_SET2 = common dso_local global i32 0, align 4
@NVRAM_TIMEOUT_COUNT = common dso_local global i32 0, align 4
@BNX2_NVM_SW_ARB_ARB_ARB2 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_acquire_nvram_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_acquire_nvram_lock(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %6 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %7 = load i32, i32* @BNX2_NVM_SW_ARB, align 4
  %8 = load i32, i32* @BNX2_NVM_SW_ARB_ARB_REQ_SET2, align 4
  %9 = call i32 @BNX2_WR(%struct.bnx2* %6, i32 %7, i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NVRAM_TIMEOUT_COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = load i32, i32* @BNX2_NVM_SW_ARB, align 4
  %17 = call i32 @BNX2_RD(%struct.bnx2* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BNX2_NVM_SW_ARB_ARB_ARB2, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %28

23:                                               ; preds = %14
  %24 = call i32 @udelay(i32 5)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %10

28:                                               ; preds = %22, %10
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @NVRAM_TIMEOUT_COUNT, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
