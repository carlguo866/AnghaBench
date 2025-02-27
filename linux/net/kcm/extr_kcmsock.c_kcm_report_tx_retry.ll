; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_report_tx_retry.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_report_tx_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_sock = type { %struct.kcm_mux* }
%struct.kcm_mux = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcm_sock*)* @kcm_report_tx_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcm_report_tx_retry(%struct.kcm_sock* %0) #0 {
  %2 = alloca %struct.kcm_sock*, align 8
  %3 = alloca %struct.kcm_mux*, align 8
  store %struct.kcm_sock* %0, %struct.kcm_sock** %2, align 8
  %4 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %5 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %4, i32 0, i32 0
  %6 = load %struct.kcm_mux*, %struct.kcm_mux** %5, align 8
  store %struct.kcm_mux* %6, %struct.kcm_mux** %3, align 8
  %7 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %8 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %11 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @KCM_STATS_INCR(i32 %13)
  %15 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %16 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock_bh(i32* %16)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @KCM_STATS_INCR(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
