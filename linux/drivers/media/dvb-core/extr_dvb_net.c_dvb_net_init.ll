; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_adapter = type { i32 }
%struct.dvb_net = type { i32, i64*, %struct.dmx_demux*, i32 }
%struct.dmx_demux = type { i32 }

@DVB_NET_DEVICES_MAX = common dso_local global i32 0, align 4
@dvbdev_net = common dso_local global i32 0, align 4
@DVB_DEVICE_NET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_net_init(%struct.dvb_adapter* %0, %struct.dvb_net* %1, %struct.dmx_demux* %2) #0 {
  %4 = alloca %struct.dvb_adapter*, align 8
  %5 = alloca %struct.dvb_net*, align 8
  %6 = alloca %struct.dmx_demux*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_adapter* %0, %struct.dvb_adapter** %4, align 8
  store %struct.dvb_net* %1, %struct.dvb_net** %5, align 8
  store %struct.dmx_demux* %2, %struct.dmx_demux** %6, align 8
  %8 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %9 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %8, i32 0, i32 3
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %12 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %12, i32 0, i32 2
  store %struct.dmx_demux* %11, %struct.dmx_demux** %13, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %25, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DVB_NET_DEVICES_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %20 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.dvb_adapter*, %struct.dvb_adapter** %4, align 8
  %30 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %30, i32 0, i32 0
  %32 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %33 = load i32, i32* @DVB_DEVICE_NET, align 4
  %34 = call i32 @dvb_register_device(%struct.dvb_adapter* %29, i32* %31, i32* @dvbdev_net, %struct.dvb_net* %32, i32 %33, i32 0)
  ret i32 %34
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dvb_register_device(%struct.dvb_adapter*, i32*, i32*, %struct.dvb_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
