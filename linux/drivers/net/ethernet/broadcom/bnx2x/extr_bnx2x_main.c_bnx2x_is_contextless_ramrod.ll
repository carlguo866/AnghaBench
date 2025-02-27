; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_is_contextless_ramrod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_is_contextless_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_FORWARD_SETUP = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_FILTER_RULES = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_MULTICAST_RULES = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_SET_MAC = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_RSS_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bnx2x_is_contextless_ramrod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_is_contextless_ramrod(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @RAMROD_CMD_ID_ETH_FORWARD_SETUP, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RAMROD_CMD_ID_ETH_FILTER_RULES, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @RAMROD_CMD_ID_ETH_MULTICAST_RULES, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @RAMROD_CMD_ID_ETH_SET_MAC, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @RAMROD_CMD_ID_ETH_RSS_UPDATE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25, %21, %17, %13, %9, %2
  store i32 1, i32* %3, align 4
  br label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
