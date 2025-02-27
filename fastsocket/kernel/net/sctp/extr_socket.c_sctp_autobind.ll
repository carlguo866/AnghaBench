; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_autobind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_autobind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_af = type { i32, i32 (%union.sctp_addr*, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sctp_af* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @sctp_autobind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_autobind(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %union.sctp_addr, align 4
  %4 = alloca %struct.sctp_af*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.TYPE_5__* @sctp_sk(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.sctp_af*, %struct.sctp_af** %10, align 8
  store %struct.sctp_af* %11, %struct.sctp_af** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call %struct.TYPE_6__* @inet_sk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @htons(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sctp_af*, %struct.sctp_af** %4, align 8
  %18 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %17, i32 0, i32 1
  %19 = load i32 (%union.sctp_addr*, i32)*, i32 (%union.sctp_addr*, i32)** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 %19(%union.sctp_addr* %3, i32 %20)
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = load %struct.sctp_af*, %struct.sctp_af** %4, align 8
  %24 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sctp_do_bind(%struct.sock* %22, %union.sctp_addr* %3, i32 %25)
  ret i32 %26
}

declare dso_local %struct.TYPE_5__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_6__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sctp_do_bind(%struct.sock*, %union.sctp_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
