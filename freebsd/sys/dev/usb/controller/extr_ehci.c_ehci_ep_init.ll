; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_ep_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_endpoint = type { i32* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"endpoint=%p, addr=%d, endpt=%d, mode=%d (%d)\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i32 0, align 4
@ehci_device_ctrl_methods = common dso_local global i32 0, align 4
@ehci_device_intr_methods = common dso_local global i32 0, align 4
@ehci_device_isoc_hs_methods = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@ehci_device_isoc_fs_methods = common dso_local global i32 0, align 4
@ehci_device_bulk_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint*)* @ehci_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_ep_init(%struct.usb_device* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  store %struct.usb_endpoint* %2, %struct.usb_endpoint** %6, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_7__* @EHCI_BUS2SC(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %17 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %12, i32 %15, i32 %18, i32 %22, i64 %25)
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %100

34:                                               ; preds = %3
  %35 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USB_SPEED_HIGH, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %34
  %41 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %40
  %46 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %52 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp eq %struct.TYPE_6__* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %57 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %56, i32 0, i32 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %50, %45, %40
  br label %101

63:                                               ; preds = %55, %34
  %64 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %65 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @UE_XFERTYPE, align 4
  %68 = and i32 %66, %67
  switch i32 %68, label %98 [
    i32 130, label %69
    i32 129, label %72
    i32 128, label %75
    i32 131, label %95
  ]

69:                                               ; preds = %63
  %70 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %71 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %70, i32 0, i32 0
  store i32* @ehci_device_ctrl_methods, i32** %71, align 8
  br label %99

72:                                               ; preds = %63
  %73 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %74 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %73, i32 0, i32 0
  store i32* @ehci_device_intr_methods, i32** %74, align 8
  br label %99

75:                                               ; preds = %63
  %76 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %77 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @USB_SPEED_HIGH, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %83 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %82, i32 0, i32 0
  store i32* @ehci_device_isoc_hs_methods, i32** %83, align 8
  br label %94

84:                                               ; preds = %75
  %85 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %86 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @USB_SPEED_FULL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %92 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %91, i32 0, i32 0
  store i32* @ehci_device_isoc_fs_methods, i32** %92, align 8
  br label %93

93:                                               ; preds = %90, %84
  br label %94

94:                                               ; preds = %93, %81
  br label %99

95:                                               ; preds = %63
  %96 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %97 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %96, i32 0, i32 0
  store i32* @ehci_device_bulk_methods, i32** %97, align 8
  br label %99

98:                                               ; preds = %63
  br label %99

99:                                               ; preds = %98, %95, %94, %72, %69
  br label %100

100:                                              ; preds = %99, %3
  br label %101

101:                                              ; preds = %100, %62
  ret void
}

declare dso_local %struct.TYPE_7__* @EHCI_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
