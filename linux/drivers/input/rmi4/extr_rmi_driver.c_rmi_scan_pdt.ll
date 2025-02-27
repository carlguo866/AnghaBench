; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_scan_pdt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_scan_pdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_device = type { i32 }
%struct.pdt_entry = type opaque
%struct.pdt_entry.0 = type opaque

@RMI_SCAN_DONE = common dso_local global i32 0, align 4
@RMI4_MAX_PAGE = common dso_local global i32 0, align 4
@RMI_SCAN_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmi_scan_pdt(%struct.rmi_device* %0, i8* %1, i32 (%struct.rmi_device*, i8*, %struct.pdt_entry*)* %2) #0 {
  %4 = alloca %struct.rmi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (%struct.rmi_device*, i8*, %struct.pdt_entry*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rmi_device* %0, %struct.rmi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (%struct.rmi_device*, i8*, %struct.pdt_entry*)* %2, i32 (%struct.rmi_device*, i8*, %struct.pdt_entry*)** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @RMI_SCAN_DONE, align 4
  store i32 %10, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %27, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RMI4_MAX_PAGE, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32 (%struct.rmi_device*, i8*, %struct.pdt_entry*)*, i32 (%struct.rmi_device*, i8*, %struct.pdt_entry*)** %6, align 8
  %20 = bitcast i32 (%struct.rmi_device*, i8*, %struct.pdt_entry*)* %19 to i32 (%struct.rmi_device*, i8*, %struct.pdt_entry.0*)*
  %21 = call i32 @rmi_scan_pdt_page(%struct.rmi_device* %16, i32 %17, i32* %8, i8* %18, i32 (%struct.rmi_device*, i8*, %struct.pdt_entry.0*)* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @RMI_SCAN_CONTINUE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %30

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %11

30:                                               ; preds = %25, %11
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  br label %36

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  ret i32 %37
}

declare dso_local i32 @rmi_scan_pdt_page(%struct.rmi_device*, i32, i32*, i8*, i32 (%struct.rmi_device*, i8*, %struct.pdt_entry.0*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
