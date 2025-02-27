; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_ipassists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_ipassists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"qipassi%i\00", align 1
@IPA_CMD_QIPASSIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_query_ipassists_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_query_ipassists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_query_ipassists(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %8, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %12 = load i32, i32* @IPA_CMD_QIPASSIST, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.qeth_cmd_buffer* @qeth_ipa_alloc_cmd(%struct.qeth_card* %11, i32 %12, i32 %13, i32 0)
  store %struct.qeth_cmd_buffer* %14, %struct.qeth_cmd_buffer** %7, align 8
  %15 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %16 = icmp ne %struct.qeth_cmd_buffer* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %22 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %23 = load i32, i32* @qeth_query_ipassists_cb, align 4
  %24 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %21, %struct.qeth_cmd_buffer* %22, i32 %23, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_ipa_alloc_cmd(%struct.qeth_card*, i32, i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
