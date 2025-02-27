; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_to_addr_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_to_addr_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%union.sctp_addr_param = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@SCTP_PARAM_IPV4_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %union.sctp_addr_param*)* @sctp_v4_to_addr_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v4_to_addr_param(%union.sctp_addr* %0, %union.sctp_addr_param* %1) #0 {
  %3 = alloca %union.sctp_addr*, align 8
  %4 = alloca %union.sctp_addr_param*, align 8
  %5 = alloca i32, align 4
  store %union.sctp_addr* %0, %union.sctp_addr** %3, align 8
  store %union.sctp_addr_param* %1, %union.sctp_addr_param** %4, align 8
  store i32 4, i32* %5, align 4
  %6 = load i32, i32* @SCTP_PARAM_IPV4_ADDRESS, align 4
  %7 = load %union.sctp_addr_param*, %union.sctp_addr_param** %4, align 8
  %8 = bitcast %union.sctp_addr_param* %7 to %struct.TYPE_8__*
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %6, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @htons(i32 %11)
  %13 = load %union.sctp_addr_param*, %union.sctp_addr_param** %4, align 8
  %14 = bitcast %union.sctp_addr_param* %13 to %struct.TYPE_8__*
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %18 = bitcast %union.sctp_addr* %17 to %struct.TYPE_10__*
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %union.sctp_addr_param*, %union.sctp_addr_param** %4, align 8
  %23 = bitcast %union.sctp_addr_param* %22 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
