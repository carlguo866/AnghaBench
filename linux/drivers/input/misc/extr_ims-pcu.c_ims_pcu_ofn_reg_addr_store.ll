; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_ofn_reg_addr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_ofn_reg_addr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.ims_pcu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ims_pcu_ofn_reg_addr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_ofn_reg_addr_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.ims_pcu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.usb_interface* @to_usb_interface(%struct.device* %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %10, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %17 = call %struct.ims_pcu* @usb_get_intfdata(%struct.usb_interface* %16)
  store %struct.ims_pcu* %17, %struct.ims_pcu** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtou8(i8* %18, i32 0, i32* %13)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %36

24:                                               ; preds = %4
  %25 = load %struct.ims_pcu*, %struct.ims_pcu** %11, align 8
  %26 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.ims_pcu*, %struct.ims_pcu** %11, align 8
  %30 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ims_pcu*, %struct.ims_pcu** %11, align 8
  %32 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %24, %22
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.ims_pcu* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
