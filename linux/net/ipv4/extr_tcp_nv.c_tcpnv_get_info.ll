; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_nv.c_tcpnv_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_nv.c_tcpnv_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%union.tcp_cc_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.tcpnv = type { i32, i32, i32 }

@INET_DIAG_VEGASINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i32, i32*, %union.tcp_cc_info*)* @tcpnv_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcpnv_get_info(%struct.sock* %0, i32 %1, i32* %2, %union.tcp_cc_info* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %union.tcp_cc_info*, align 8
  %10 = alloca %struct.tcpnv*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %union.tcp_cc_info* %3, %union.tcp_cc_info** %9, align 8
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = call %struct.tcpnv* @inet_csk_ca(%struct.sock* %11)
  store %struct.tcpnv* %12, %struct.tcpnv** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @INET_DIAG_VEGASINFO, align 4
  %15 = sub nsw i32 %14, 1
  %16 = shl i32 1, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %4
  %20 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %21 = bitcast %union.tcp_cc_info* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.tcpnv*, %struct.tcpnv** %10, align 8
  %24 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %27 = bitcast %union.tcp_cc_info* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load %struct.tcpnv*, %struct.tcpnv** %10, align 8
  %30 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %33 = bitcast %union.tcp_cc_info* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load %struct.tcpnv*, %struct.tcpnv** %10, align 8
  %36 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %39 = bitcast %union.tcp_cc_info* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @INET_DIAG_VEGASINFO, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  store i64 4, i64* %5, align 8
  br label %44

43:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local %struct.tcpnv* @inet_csk_ca(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
