; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipa_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipa_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"strtvlan\00", align 1
@IPA_FULL_VLAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"VLAN not supported on %s\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_VLAN_PRIO = common dso_local global i32 0, align 4
@IPA_CMD_ASS_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Starting VLAN support for %s failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"VLAN enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_start_ipa_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_start_ipa_vlan(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %6 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %5, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = load i32, i32* @IPA_FULL_VLAN, align 4
  %9 = call i32 @qeth_is_supported(%struct.qeth_card* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %17 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %16)
  %18 = call i32 (i32*, i8*, ...) @dev_info(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %23 = load i32, i32* @IPA_VLAN_PRIO, align 4
  %24 = load i32, i32* @IPA_CMD_ASS_START, align 4
  %25 = call i32 @qeth_send_simple_setassparms(%struct.qeth_card* %22, i32 %23, i32 %24, i32* null)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %34 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %33)
  %35 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %42

36:                                               ; preds = %21
  %37 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_info(i32* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %28
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @qeth_send_simple_setassparms(%struct.qeth_card*, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
