; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.st21nfca_hci_info = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@ST21NFCA_ST_COLD = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ST21NFCA_ST_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*)* @st21nfca_hci_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_open(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca %struct.nfc_hci_dev*, align 8
  %3 = alloca %struct.st21nfca_hci_info*, align 8
  %4 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %2, align 8
  %5 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %6 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %5)
  store %struct.st21nfca_hci_info* %6, %struct.st21nfca_hci_info** %3, align 8
  %7 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %8 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %11 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ST21NFCA_ST_COLD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %20 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %25 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %23(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i64, i64* @ST21NFCA_ST_READY, align 8
  %32 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %33 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %18
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %37 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
