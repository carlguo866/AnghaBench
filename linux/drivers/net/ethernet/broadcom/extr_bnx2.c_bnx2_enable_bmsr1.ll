; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_enable_bmsr1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_enable_bmsr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_PHY_FLAG_SERDES = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@MII_BNX2_BLK_ADDR = common dso_local global i32 0, align 4
@MII_BNX2_BLK_ADDR_GP_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_enable_bmsr1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_enable_bmsr1(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %3 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %4 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %11 = call i64 @BNX2_CHIP(%struct.bnx2* %10)
  %12 = load i64, i64* @BNX2_CHIP_5709, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %16 = load i32, i32* @MII_BNX2_BLK_ADDR, align 4
  %17 = load i32, i32* @MII_BNX2_BLK_ADDR_GP_STATUS, align 4
  %18 = call i32 @bnx2_write_phy(%struct.bnx2* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %9, %1
  ret void
}

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @bnx2_write_phy(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
