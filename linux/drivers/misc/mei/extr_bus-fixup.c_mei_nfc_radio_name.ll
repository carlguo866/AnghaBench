; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus-fixup.c_mei_nfc_radio_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus-fixup.c_mei_nfc_radio_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_nfc_if_version = type { i64, i64 }

@MEI_NFC_VENDOR_INSIDE = common dso_local global i64 0, align 8
@MEI_NFC_VENDOR_INSIDE_UREAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"microread\00", align 1
@MEI_NFC_VENDOR_NXP = common dso_local global i64 0, align 8
@MEI_NFC_VENDOR_NXP_PN544 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"pn544\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mei_nfc_if_version*)* @mei_nfc_radio_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mei_nfc_radio_name(%struct.mei_nfc_if_version* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mei_nfc_if_version*, align 8
  store %struct.mei_nfc_if_version* %0, %struct.mei_nfc_if_version** %3, align 8
  %4 = load %struct.mei_nfc_if_version*, %struct.mei_nfc_if_version** %3, align 8
  %5 = getelementptr inbounds %struct.mei_nfc_if_version, %struct.mei_nfc_if_version* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MEI_NFC_VENDOR_INSIDE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.mei_nfc_if_version*, %struct.mei_nfc_if_version** %3, align 8
  %11 = getelementptr inbounds %struct.mei_nfc_if_version, %struct.mei_nfc_if_version* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MEI_NFC_VENDOR_INSIDE_UREAD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %32

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.mei_nfc_if_version*, %struct.mei_nfc_if_version** %3, align 8
  %19 = getelementptr inbounds %struct.mei_nfc_if_version, %struct.mei_nfc_if_version* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MEI_NFC_VENDOR_NXP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.mei_nfc_if_version*, %struct.mei_nfc_if_version** %3, align 8
  %25 = getelementptr inbounds %struct.mei_nfc_if_version, %struct.mei_nfc_if_version* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MEI_NFC_VENDOR_NXP_PN544, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %32

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %17
  store i8* null, i8** %2, align 8
  br label %32

32:                                               ; preds = %31, %29, %15
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
