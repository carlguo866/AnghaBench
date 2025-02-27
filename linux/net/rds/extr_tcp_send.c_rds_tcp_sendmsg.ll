; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_send.c_rds_tcp_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_send.c_rds_tcp_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.kvec = type { i8*, i32 }
%struct.msghdr = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*, i32)* @rds_tcp_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_tcp_sendmsg(%struct.socket* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvec, align 8
  %8 = alloca %struct.msghdr, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  %14 = load i32, i32* @MSG_DONTWAIT, align 4
  %15 = load i32, i32* @MSG_NOSIGNAL, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kernel_sendmsg(%struct.socket* %17, %struct.msghdr* %8, %struct.kvec* %7, i32 1, i32 %19)
  ret i32 %20
}

declare dso_local i32 @kernel_sendmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
