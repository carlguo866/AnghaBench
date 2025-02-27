; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_get_unique_id_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_get_unique_id_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_8__*, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@UNIQUE_ID_IF_CREATE_ADDR_FAILED = common dso_local global i32 0, align 4
@UNIQUE_ID_NOT_BY_CARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"The network adapter failed to generate a unique ID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_l3_get_unique_id_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_get_unique_id_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_reply*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = inttoptr i64 %8 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %9, %struct.qeth_ipa_cmd** %7, align 8
  %10 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  br label %38

26:                                               ; preds = %3
  %27 = load i32, i32* @UNIQUE_ID_IF_CREATE_ADDR_FAILED, align 4
  %28 = load i32, i32* @UNIQUE_ID_NOT_BY_CARD, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %26, %15
  ret i32 0
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
