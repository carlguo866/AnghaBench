; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_mm_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_mm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.file* }
%struct.file = type { %struct.socket* }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @packet_mm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_mm_open(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  %8 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %8, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %4, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %5, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = icmp ne %struct.sock* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call %struct.TYPE_2__* @pkt_sk(%struct.sock* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @atomic_inc(i32* %20)
  br label %22

22:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_2__* @pkt_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
