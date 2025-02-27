; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpcb = type { %struct.socket*, %struct.unpcb* }
%struct.socket = type { i64 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unpcb*)* @unp_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unp_shutdown(%struct.unpcb* %0) #0 {
  %2 = alloca %struct.unpcb*, align 8
  %3 = alloca %struct.unpcb*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.unpcb* %0, %struct.unpcb** %2, align 8
  %5 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %6 = call i32 @UNP_PCB_LOCK_ASSERT(%struct.unpcb* %5)
  %7 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %8 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %7, i32 0, i32 1
  %9 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  store %struct.unpcb* %9, %struct.unpcb** %3, align 8
  %10 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %11 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %10, i32 0, i32 0
  %12 = load %struct.socket*, %struct.socket** %11, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOCK_STREAM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %19 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %18, i32 0, i32 0
  %20 = load %struct.socket*, %struct.socket** %19, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOCK_SEQPACKET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %17, %1
  %26 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %27 = icmp ne %struct.unpcb* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %30 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %29, i32 0, i32 0
  %31 = load %struct.socket*, %struct.socket** %30, align 8
  store %struct.socket* %31, %struct.socket** %4, align 8
  %32 = load %struct.socket*, %struct.socket** %4, align 8
  %33 = icmp ne %struct.socket* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.socket*, %struct.socket** %4, align 8
  %36 = call i32 @socantrcvmore(%struct.socket* %35)
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37, %25, %17
  ret void
}

declare dso_local i32 @UNP_PCB_LOCK_ASSERT(%struct.unpcb*) #1

declare dso_local i32 @socantrcvmore(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
