; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setup_ccw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setup_ccw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_channel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.qeth_card = type { %struct.qeth_channel }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setupccw\00", align 1
@READ_CCW = common dso_local global i32 0, align 4
@WRITE_CCW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_channel*, i8*, i8*)* @qeth_setup_ccw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_setup_ccw(%struct.qeth_channel* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.qeth_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_channel* %0, %struct.qeth_channel** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @TRACE, align 4
  %9 = call i32 @QETH_DBF_TEXT(i32 %8, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %11 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.qeth_card* @CARD_FROM_CDEV(i32 %12)
  store %struct.qeth_card* %13, %struct.qeth_card** %7, align 8
  %14 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %15 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 0
  %17 = icmp eq %struct.qeth_channel* %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %20 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %19, i32 0, i32 0
  %21 = load i32, i32* @READ_CCW, align 4
  %22 = call i32 @memcpy(%struct.TYPE_2__* %20, i32 %21, i32 4)
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %25 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %24, i32 0, i32 0
  %26 = load i32, i32* @WRITE_CCW, align 4
  %27 = call i32 @memcpy(%struct.TYPE_2__* %25, i32 %26, i32 4)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %31 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @__pa(i8* %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %37 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_card* @CARD_FROM_CDEV(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @__pa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
