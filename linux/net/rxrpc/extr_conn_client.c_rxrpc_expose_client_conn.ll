; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_expose_client_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_expose_client_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32 }

@RXRPC_CONN_EXPOSED = common dso_local global i32 0, align 4
@rxrpc_client_exposed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*, i32)* @rxrpc_expose_client_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_expose_client_conn(%struct.rxrpc_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.rxrpc_connection*, align 8
  %4 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @RXRPC_CONN_EXPOSED, align 4
  %6 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %7 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %6, i32 0, i32 0
  %8 = call i32 @test_and_set_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @rxrpc_client_exposed, align 4
  %14 = call i32 @trace_rxrpc_client(%struct.rxrpc_connection* %11, i32 %12, i32 %13)
  %15 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %16 = call i32 @rxrpc_get_connection(%struct.rxrpc_connection* %15)
  br label %17

17:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @trace_rxrpc_client(%struct.rxrpc_connection*, i32, i32) #1

declare dso_local i32 @rxrpc_get_connection(%struct.rxrpc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
