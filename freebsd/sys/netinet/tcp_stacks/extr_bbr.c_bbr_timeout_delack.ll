; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timeout_delack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timeout_delack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tcp_bbr = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@BBR_TO_FRM_DELACK = common dso_local global i32 0, align 4
@TF_DELACK = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@tcps_delack = common dso_local global i32 0, align 4
@PACE_TMR_DELACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_bbr*, i32)* @bbr_timeout_delack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_timeout_delack(%struct.tcpcb* %0, %struct.tcp_bbr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %9 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %38

13:                                               ; preds = %3
  %14 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @BBR_TO_FRM_DELACK, align 4
  %17 = call i32 @bbr_log_to_event(%struct.tcp_bbr* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @TF_DELACK, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @TF_ACKNOW, align 4
  %25 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @tcps_delack, align 4
  %30 = call i32 @TCPSTAT_INC(i32 %29)
  %31 = load i32, i32* @PACE_TMR_DELACK, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %34 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %32
  store i32 %37, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %13, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @bbr_log_to_event(%struct.tcp_bbr*, i32, i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
