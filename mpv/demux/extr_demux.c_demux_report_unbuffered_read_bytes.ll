; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_report_unbuffered_read_bytes.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_report_unbuffered_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, %struct.demuxer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_report_unbuffered_read_bytes(%struct.demuxer* %0, i64 %1) #0 {
  %3 = alloca %struct.demuxer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.demux_internal*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %7 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %6, i32 0, i32 0
  %8 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  store %struct.demux_internal* %8, %struct.demux_internal** %5, align 8
  %9 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %10 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %11 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %10, i32 0, i32 1
  %12 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %13 = icmp eq %struct.demuxer* %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %18 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
