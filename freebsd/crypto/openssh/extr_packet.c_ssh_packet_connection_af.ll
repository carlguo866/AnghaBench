; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_connection_af.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_connection_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_packet_connection_af(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.sockaddr_storage, align 8
  %5 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store i32 8, i32* %5, align 4
  %6 = call i32 @memset(%struct.sockaddr_storage* %4, i32 0, i32 8)
  %7 = load %struct.ssh*, %struct.ssh** %3, align 8
  %8 = getelementptr inbounds %struct.ssh, %struct.ssh* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %13 = call i64 @getsockname(i32 %11, %struct.sockaddr* %12, i32* %5)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
