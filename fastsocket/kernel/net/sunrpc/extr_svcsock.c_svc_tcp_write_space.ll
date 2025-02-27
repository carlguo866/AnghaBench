; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_write_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.socket* }
%struct.socket = type { i32 }

@SOCK_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @svc_tcp_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_tcp_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.socket*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load %struct.socket*, %struct.socket** %5, align 8
  store %struct.socket* %6, %struct.socket** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call i64 @sk_stream_wspace(%struct.sock* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call i64 @sk_stream_min_wspace(%struct.sock* %9)
  %11 = icmp sge i64 %8, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = icmp ne %struct.socket* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* @SOCK_NOSPACE, align 4
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  br label %20

20:                                               ; preds = %15, %12, %1
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = call i32 @svc_write_space(%struct.sock* %21)
  ret void
}

declare dso_local i64 @sk_stream_wspace(%struct.sock*) #1

declare dso_local i64 @sk_stream_min_wspace(%struct.sock*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @svc_write_space(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
