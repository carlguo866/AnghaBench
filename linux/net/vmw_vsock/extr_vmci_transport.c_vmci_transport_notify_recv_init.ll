; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_notify_recv_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_notify_recv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32 }
%struct.vsock_transport_recv_notify_data = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i64, %struct.vmci_transport_recv_notify_data*)* }
%struct.vmci_transport_recv_notify_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_recv_notify_data*)* @vmci_transport_notify_recv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_notify_recv_init(%struct.vsock_sock* %0, i64 %1, %struct.vsock_transport_recv_notify_data* %2) #0 {
  %4 = alloca %struct.vsock_sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vsock_transport_recv_notify_data*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.vsock_transport_recv_notify_data* %2, %struct.vsock_transport_recv_notify_data** %6, align 8
  %7 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %8 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (i32*, i64, %struct.vmci_transport_recv_notify_data*)*, i32 (i32*, i64, %struct.vmci_transport_recv_notify_data*)** %11, align 8
  %13 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %14 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.vsock_transport_recv_notify_data*, %struct.vsock_transport_recv_notify_data** %6, align 8
  %17 = bitcast %struct.vsock_transport_recv_notify_data* %16 to %struct.vmci_transport_recv_notify_data*
  %18 = call i32 %12(i32* %14, i64 %15, %struct.vmci_transport_recv_notify_data* %17)
  ret i32 %18
}

declare dso_local %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
