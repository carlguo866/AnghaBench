; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_validate_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_validate_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QETH_LAYER2_MAC_REGISTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nomacadr\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qeth_l2_validate_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_validate_addr(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  store %struct.qeth_card* %7, %struct.qeth_card** %4, align 8
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @QETH_LAYER2_MAC_REGISTERED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @eth_validate_addr(%struct.net_device* %16)
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %20 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %19, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @eth_validate_addr(%struct.net_device*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
