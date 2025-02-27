; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_get_next_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_get_next_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.encoder_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*, %struct.encoder_packet*)* @get_next_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_packet(%struct.rtmp_stream* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca %struct.rtmp_stream*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca i32, align 4
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %7 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %6, i32 0, i32 0
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  %9 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %10 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %16 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %15, i32 0, i32 1
  %17 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %18 = call i32 @circlebuf_pop_front(%struct.TYPE_2__* %16, %struct.encoder_packet* %17, i32 4)
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %21 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %20, i32 0, i32 0
  %22 = call i32 @pthread_mutex_unlock(i32* %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_2__*, %struct.encoder_packet*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
