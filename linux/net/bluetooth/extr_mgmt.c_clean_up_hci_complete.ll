; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_clean_up_hci_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_clean_up_hci_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s status 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32)* @clean_up_hci_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_up_hci_complete(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = call i64 @hci_conn_count(%struct.hci_dev* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 0
  %18 = call i32 @cancel_delayed_work(%struct.TYPE_2__* %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @queue_work(i32 %21, i32* %24)
  br label %26

26:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i64 @hci_conn_count(%struct.hci_dev*) #1

declare dso_local i32 @cancel_delayed_work(%struct.TYPE_2__*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
