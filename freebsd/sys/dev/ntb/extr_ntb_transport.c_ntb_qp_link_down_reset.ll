; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_qp_link_down_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_qp_link_down_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*)* @ntb_qp_link_down_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_qp_link_down_reset(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca %struct.ntb_transport_qp*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %2, align 8
  %3 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %4 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %6 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %5, i32 0, i32 14
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %9 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = shl i64 1, %10
  %12 = call i32 @ntb_db_set_mask(i32 %7, i64 %11)
  %13 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %13, i32 0, i32 12
  store i64 0, i64* %14, align 8
  %15 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %16 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %15, i32 0, i32 13
  store i64 0, i64* %16, align 8
  %17 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %18 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %19, i32 0, i32 11
  store i64 0, i64* %20, align 8
  %21 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %22 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %24 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %26 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %28 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %30 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %32 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %34 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %36 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  ret void
}

declare dso_local i32 @ntb_db_set_mask(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
