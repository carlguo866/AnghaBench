; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.btsdio_data* }
%struct.btsdio_data = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btsdio_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btsdio_flush(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btsdio_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %4, i32 0, i32 1
  %6 = load %struct.btsdio_data*, %struct.btsdio_data** %5, align 8
  store %struct.btsdio_data* %6, %struct.btsdio_data** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %12 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %11, i32 0, i32 0
  %13 = call i32 @skb_queue_purge(i32* %12)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
