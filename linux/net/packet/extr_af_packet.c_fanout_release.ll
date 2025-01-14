; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_fanout_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_fanout_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_fanout = type { i32, i32 }
%struct.sock = type { i32 }
%struct.packet_sock = type { %struct.packet_fanout* }

@fanout_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.packet_fanout* (%struct.sock*)* @fanout_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.packet_fanout* @fanout_release(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.packet_sock*, align 8
  %4 = alloca %struct.packet_fanout*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.packet_sock* @pkt_sk(%struct.sock* %5)
  store %struct.packet_sock* %6, %struct.packet_sock** %3, align 8
  %7 = call i32 @mutex_lock(i32* @fanout_mutex)
  %8 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %9 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %8, i32 0, i32 0
  %10 = load %struct.packet_fanout*, %struct.packet_fanout** %9, align 8
  store %struct.packet_fanout* %10, %struct.packet_fanout** %4, align 8
  %11 = load %struct.packet_fanout*, %struct.packet_fanout** %4, align 8
  %12 = icmp ne %struct.packet_fanout* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %15 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %14, i32 0, i32 0
  store %struct.packet_fanout* null, %struct.packet_fanout** %15, align 8
  %16 = load %struct.packet_fanout*, %struct.packet_fanout** %4, align 8
  %17 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %16, i32 0, i32 1
  %18 = call i64 @refcount_dec_and_test(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.packet_fanout*, %struct.packet_fanout** %4, align 8
  %22 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  br label %25

24:                                               ; preds = %13
  store %struct.packet_fanout* null, %struct.packet_fanout** %4, align 8
  br label %25

25:                                               ; preds = %24, %20
  br label %26

26:                                               ; preds = %25, %1
  %27 = call i32 @mutex_unlock(i32* @fanout_mutex)
  %28 = load %struct.packet_fanout*, %struct.packet_fanout** %4, align 8
  ret %struct.packet_fanout* %28
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
