; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_hdr.h_bth_set_psn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_hdr.h_bth_set_psn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pkt_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_pkt_info*, i32)* @bth_set_psn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bth_set_psn(%struct.rxe_pkt_info* %0, i32 %1) #0 {
  %3 = alloca %struct.rxe_pkt_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %6 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %9 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @__bth_set_psn(i64 %11, i32 %12)
  ret void
}

declare dso_local i32 @__bth_set_psn(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
