; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_resolve_flowctrl_1000X.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_resolve_flowctrl_1000X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADVERTISE_1000XPAUSE = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@ADVERTISE_1000XPSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tg3_resolve_flowctrl_1000X to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_resolve_flowctrl_1000X(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @FLOW_CTRL_TX, align 4
  %14 = load i32, i32* @FLOW_CTRL_RX, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @FLOW_CTRL_RX, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @FLOW_CTRL_TX, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37, %16
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
