; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sysfs.c_store_sniff_max_interval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sysfs.c_store_sniff_max_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hci_dev = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sniff_max_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_sniff_max_interval(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.hci_dev* @dev_get_drvdata(%struct.device* %13)
  store %struct.hci_dev* %14, %struct.hci_dev** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @simple_strtoul(i8* %15, i8** %11, i32 10)
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %50

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %27, 65534
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = srem i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %26, %23
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %50

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %50

45:                                               ; preds = %36
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %45, %42, %33, %20
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local %struct.hci_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
