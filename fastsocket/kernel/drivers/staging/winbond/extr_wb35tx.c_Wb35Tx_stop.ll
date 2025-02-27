; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { %struct.wb35_tx }
%struct.wb35_tx = type { i64, i64, i32, i32 }

@VM_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Tx_stop(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca %struct.wb35_tx*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %4 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %5 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %4, i32 0, i32 0
  store %struct.wb35_tx* %5, %struct.wb35_tx** %3, align 8
  %6 = load %struct.wb35_tx*, %struct.wb35_tx** %3, align 8
  %7 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VM_RUNNING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.wb35_tx*, %struct.wb35_tx** %3, align 8
  %13 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_unlink_urb(i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.wb35_tx*, %struct.wb35_tx** %3, align 8
  %18 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VM_RUNNING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.wb35_tx*, %struct.wb35_tx** %3, align 8
  %24 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @usb_unlink_urb(i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @usb_unlink_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
