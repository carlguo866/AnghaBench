; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.h_vq_kick_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.h_vq_kick_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VRING_USED_F_NO_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vqueue_info*)* @vq_kick_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vq_kick_enable(%struct.vqueue_info* %0) #0 {
  %2 = alloca %struct.vqueue_info*, align 8
  store %struct.vqueue_info* %0, %struct.vqueue_info** %2, align 8
  %3 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.vqueue_info*, %struct.vqueue_info** %2, align 8
  %6 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %4
  store i32 %10, i32* %8, align 4
  %11 = call i32 (...) @atomic_thread_fence_seq_cst()
  ret void
}

declare dso_local i32 @atomic_thread_fence_seq_cst(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
