; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_drain_output_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_drain_output_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }

@.str = private unnamed_addr constant [10 x i8] c"clearqdbf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_drain_output_queues(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %5 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %4, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %6
  %14 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %13
  %24 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @qeth_drain_output_queue(i64 %31, i32 0)
  br label %33

33:                                               ; preds = %23, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %6

37:                                               ; preds = %6
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_drain_output_queue(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
