; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPSocket.c_sent_tcp.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPSocket.c_sent_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NETCONN_STATE_ESTABLISHED = common dso_local global i32 0, align 4
@NETCONN_EVENT_SEND = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tcp_pcb*, i32)* @sent_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sent_tcp(i8* %0, %struct.tcp_pcb* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tcp_pcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = call i32 @lwIP_ASSERT(%struct.TYPE_4__* %10)
  %12 = load i32, i32* @NETCONN_STATE_ESTABLISHED, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = call i32 @find_socket(%struct.TYPE_4__* %15)
  %17 = load i32, i32* @NETCONN_EVENT_SEND, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @lwIP_EVENT_THREAD(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @ERR_OK, align 4
  ret i32 %20
}

declare dso_local i32 @lwIP_ASSERT(%struct.TYPE_4__*) #1

declare dso_local i32 @lwIP_EVENT_THREAD(i32, i32, i32) #1

declare dso_local i32 @find_socket(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
