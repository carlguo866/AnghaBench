; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-dec/extr_ttusb_dec.c_ttusb_dec_stop_ts_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-dec/extr_ttusb_dec.c_ttusb_dec_stop_ts_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ttusb_dec* }
%struct.ttusb_dec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @ttusb_dec_stop_ts_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb_dec_stop_ts_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca %struct.dvb_demux_feed*, align 8
  %3 = alloca %struct.ttusb_dec*, align 8
  %4 = alloca [1 x i32], align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %2, align 8
  %5 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ttusb_dec*, %struct.ttusb_dec** %8, align 8
  store %struct.ttusb_dec* %9, %struct.ttusb_dec** %3, align 8
  %10 = bitcast [1 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %13 = call i32 @ttusb_dec_send_command(%struct.ttusb_dec* %11, i32 129, i32 4, i32* %12, i32* null, i32* null)
  %14 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %15 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %19 = call i32 @ttusb_dec_stop_iso_xfer(%struct.ttusb_dec* %18)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ttusb_dec_send_command(%struct.ttusb_dec*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @ttusb_dec_stop_iso_xfer(%struct.ttusb_dec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
