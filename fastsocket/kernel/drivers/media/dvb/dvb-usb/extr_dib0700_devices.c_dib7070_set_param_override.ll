; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_dib7070_set_param_override.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_dib7070_set_param_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { %struct.dib0700_adapter_state* }
%struct.dib0700_adapter_state = type { {}* }
%struct.dvb_frontend_parameters = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"WBD for DiB7000P: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib7070_set_param_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7070_set_param_override(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dvb_usb_adapter*, align 8
  %6 = alloca %struct.dib0700_adapter_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %12, align 8
  store %struct.dvb_usb_adapter* %13, %struct.dvb_usb_adapter** %5, align 8
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 0
  %16 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %15, align 8
  store %struct.dib0700_adapter_state* %16, %struct.dib0700_adapter_state** %6, align 8
  %17 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 1000
  %21 = call i32 @BAND_OF_FREQUENCY(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %25 [
    i32 128, label %23
    i32 129, label %24
  ]

23:                                               ; preds = %2
  store i32 950, i32* %7, align 4
  br label %26

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %2, %24
  store i32 550, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %29 = call i32 @dib0070_wbd_offset(%struct.dvb_frontend* %28)
  %30 = add nsw i32 %27, %29
  %31 = call i32 @deb_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %35 = call i32 @dib0070_wbd_offset(%struct.dvb_frontend* %34)
  %36 = add nsw i32 %33, %35
  %37 = call i32 @dib7000p_set_wbd_ref(%struct.dvb_frontend* %32, i32 %36)
  %38 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %6, align 8
  %39 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)**
  %41 = load i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)** %40, align 8
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %43 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %44 = call i32 %41(%struct.dvb_frontend* %42, %struct.dvb_frontend_parameters* %43)
  ret i32 %44
}

declare dso_local i32 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @dib0070_wbd_offset(%struct.dvb_frontend*) #1

declare dso_local i32 @dib7000p_set_wbd_ref(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
