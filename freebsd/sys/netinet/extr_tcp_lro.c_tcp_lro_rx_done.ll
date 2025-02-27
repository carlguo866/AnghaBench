; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_rx_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lro_ctrl = type { i32 }
%struct.lro_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lro_ctrl*)* @tcp_lro_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lro_rx_done(%struct.lro_ctrl* %0) #0 {
  %2 = alloca %struct.lro_ctrl*, align 8
  %3 = alloca %struct.lro_entry*, align 8
  store %struct.lro_ctrl* %0, %struct.lro_ctrl** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %6 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %5, i32 0, i32 0
  %7 = call %struct.lro_entry* @LIST_FIRST(i32* %6)
  store %struct.lro_entry* %7, %struct.lro_entry** %3, align 8
  %8 = icmp ne %struct.lro_entry* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load %struct.lro_entry*, %struct.lro_entry** %3, align 8
  %11 = call i32 @tcp_lro_active_remove(%struct.lro_entry* %10)
  %12 = load %struct.lro_ctrl*, %struct.lro_ctrl** %2, align 8
  %13 = load %struct.lro_entry*, %struct.lro_entry** %3, align 8
  %14 = call i32 @tcp_lro_flush(%struct.lro_ctrl* %12, %struct.lro_entry* %13)
  br label %4

15:                                               ; preds = %4
  ret void
}

declare dso_local %struct.lro_entry* @LIST_FIRST(i32*) #1

declare dso_local i32 @tcp_lro_active_remove(%struct.lro_entry*) #1

declare dso_local i32 @tcp_lro_flush(%struct.lro_ctrl*, %struct.lro_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
