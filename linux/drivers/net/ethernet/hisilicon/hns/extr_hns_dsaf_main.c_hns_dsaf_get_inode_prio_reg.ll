; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_get_inode_prio_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_get_inode_prio_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DSAF_INODE_IN_PRIO_PAUSE_BASE_REG = common dso_local global i64 0, align 8
@DSAF_REG_PER_ZONE = common dso_local global i32 0, align 4
@DSAF_INODE_IN_PRIO_PAUSE_BASE_OFFSET = common dso_local global i32 0, align 4
@DSAF_INODE_IN_PRIO_PAUSE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @hns_dsaf_get_inode_prio_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hns_dsaf_get_inode_prio_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @DSAF_INODE_IN_PRIO_PAUSE_BASE_REG, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  %9 = load i32, i32* @DSAF_REG_PER_ZONE, align 4
  %10 = sdiv i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @DSAF_REG_PER_ZONE, align 4
  %14 = srem i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @DSAF_INODE_IN_PRIO_PAUSE_BASE_OFFSET, align 4
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = load i32, i32* @DSAF_INODE_IN_PRIO_PAUSE_OFFSET, align 4
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
