; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-server.c_tcp_rpcs_send_handshake_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-server.c_tcp_rpcs_send_handshake_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rpc_handshake_packet = type { i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.connection = type { i32 }
%struct.tcp_rpc_data = type { %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.connection*)* }

@tcp_rpcs_send_handshake_packet.P = internal global %struct.tcp_rpc_handshake_packet zeroinitializer, align 8
@PID = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@RPC_HANDSHAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @tcp_rpcs_send_handshake_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_rpcs_send_handshake_packet(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.tcp_rpc_data*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = call %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection* %4)
  store %struct.tcp_rpc_data* %5, %struct.tcp_rpc_data** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 0), align 4
  %7 = call i32 @assert(i32 %6)
  %8 = call i32 @memset(%struct.tcp_rpc_handshake_packet* @tcp_rpcs_send_handshake_packet.P, i32 0, i32 24)
  %9 = load i32, i32* @RPC_HANDSHAKE, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_send_handshake_packet.P, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_send_handshake_packet.P, i32 0, i32 2), align 8
  %10 = call i32 @memcpy(i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_send_handshake_packet.P, i32 0, i32 1), %struct.TYPE_4__* @PID, i32 4)
  %11 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %11, i32 0, i32 0
  %13 = call i32 @memcpy(i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_send_handshake_packet.P, i32 0, i32 0), %struct.TYPE_4__* %12, i32 4)
  %14 = load %struct.connection*, %struct.connection** %2, align 8
  %15 = call i32 @tcp_rpc_conn_send_data(%struct.connection* %14, i32 24, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_send_handshake_packet.P)
  %16 = load %struct.connection*, %struct.connection** %2, align 8
  %17 = call %struct.TYPE_5__* @TCP_RPCS_FUNC(%struct.connection* %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %18, align 8
  %20 = load %struct.connection*, %struct.connection** %2, align 8
  %21 = call i32 %19(%struct.connection* %20)
  ret i32 0
}

declare dso_local %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.tcp_rpc_handshake_packet*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @tcp_rpc_conn_send_data(%struct.connection*, i32, %struct.tcp_rpc_handshake_packet*) #1

declare dso_local %struct.TYPE_5__* @TCP_RPCS_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
