; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_read_adapter_vpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_read_adapter_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i64)* }
%struct.pci_dev = type { i32 }
%struct.cxl_afu = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_read_adapter_vpd(%struct.pci_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cxl_afu*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = call %struct.cxl_afu* @cxl_pci_to_afu(%struct.pci_dev* %9)
  store %struct.cxl_afu* %10, %struct.cxl_afu** %8, align 8
  %11 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %12 = call i64 @IS_ERR(%struct.cxl_afu* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %27

17:                                               ; preds = %3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %19, align 8
  %21 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %22 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 %20(i32 %23, i8* %24, i64 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %17, %14
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.cxl_afu* @cxl_pci_to_afu(%struct.pci_dev*) #1

declare dso_local i64 @IS_ERR(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
