; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_switch_attributes_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_switch_attributes_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_reply = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.qeth_query_switch_attributes }
%struct.qeth_query_switch_attributes = type { i32, i32 }
%struct.qeth_switch_info = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"qswiatcb\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%04x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_query_switch_attributes_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_query_switch_attributes_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca %struct.qeth_query_switch_attributes*, align 8
  %10 = alloca %struct.qeth_switch_info*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %12, %struct.qeth_ipa_cmd** %8, align 8
  %13 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %14 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %13, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %16 = call i64 @qeth_setadpparms_inspect_rc(%struct.qeth_ipa_cmd* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %49

21:                                               ; preds = %3
  %22 = load %struct.qeth_reply*, %struct.qeth_reply** %6, align 8
  %23 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.qeth_switch_info*
  store %struct.qeth_switch_info* %25, %struct.qeth_switch_info** %10, align 8
  %26 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %27 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.qeth_query_switch_attributes* %30, %struct.qeth_query_switch_attributes** %9, align 8
  %31 = load %struct.qeth_query_switch_attributes*, %struct.qeth_query_switch_attributes** %9, align 8
  %32 = getelementptr inbounds %struct.qeth_query_switch_attributes, %struct.qeth_query_switch_attributes* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qeth_switch_info*, %struct.qeth_switch_info** %10, align 8
  %35 = getelementptr inbounds %struct.qeth_switch_info, %struct.qeth_switch_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.qeth_query_switch_attributes*, %struct.qeth_query_switch_attributes** %9, align 8
  %37 = getelementptr inbounds %struct.qeth_query_switch_attributes, %struct.qeth_query_switch_attributes* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qeth_switch_info*, %struct.qeth_switch_info** %10, align 8
  %40 = getelementptr inbounds %struct.qeth_switch_info, %struct.qeth_switch_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %42 = load %struct.qeth_switch_info*, %struct.qeth_switch_info** %10, align 8
  %43 = getelementptr inbounds %struct.qeth_switch_info, %struct.qeth_switch_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qeth_switch_info*, %struct.qeth_switch_info** %10, align 8
  %46 = getelementptr inbounds %struct.qeth_switch_info, %struct.qeth_switch_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %41, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %21, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @qeth_setadpparms_inspect_rc(%struct.qeth_ipa_cmd*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
