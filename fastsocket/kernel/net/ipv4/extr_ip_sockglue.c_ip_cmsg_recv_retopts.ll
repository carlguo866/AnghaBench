; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv_retopts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv_retopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_options = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MSG_CTRUNC = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@IP_RETOPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.sk_buff*)* @ip_cmsg_recv_retopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_cmsg_recv_retopts(%struct.msghdr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca [48 x i8], align 16
  %6 = alloca %struct.ip_options*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds [48 x i8], [48 x i8]* %5, i64 0, i64 0
  %8 = bitcast i8* %7 to %struct.ip_options*
  store %struct.ip_options* %8, %struct.ip_options** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.TYPE_4__* @IPCB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @ip_options_echo(%struct.ip_options* %17, %struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* @MSG_CTRUNC, align 4
  %23 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %40

27:                                               ; preds = %16
  %28 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %29 = call i32 @ip_options_undo(%struct.ip_options* %28)
  %30 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %31 = load i32, i32* @SOL_IP, align 4
  %32 = load i32, i32* @IP_RETOPTS, align 4
  %33 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %34 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %37 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @put_cmsg(%struct.msghdr* %30, i32 %31, i32 %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %27, %21, %15
  ret void
}

declare dso_local %struct.TYPE_4__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @ip_options_echo(%struct.ip_options*, %struct.sk_buff*) #1

declare dso_local i32 @ip_options_undo(%struct.ip_options*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
