; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_enqueue_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_enqueue_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.vsock_sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsock_enqueue_accept(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.vsock_sock*, align 8
  %6 = alloca %struct.vsock_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %7)
  store %struct.vsock_sock* %8, %struct.vsock_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %9)
  store %struct.vsock_sock* %10, %struct.vsock_sock** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call i32 @sock_hold(%struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i32 @sock_hold(%struct.sock* %13)
  %15 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %16 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %15, i32 0, i32 0
  %17 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %18 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %17, i32 0, i32 0
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  ret void
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
