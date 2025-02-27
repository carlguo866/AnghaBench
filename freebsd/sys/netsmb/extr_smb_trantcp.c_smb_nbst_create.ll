; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { %struct.nbpcb* }
%struct.nbpcb = type { i32, i32, %struct.smb_vc*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32 }

@M_NBDATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@NBST_CLOSED = common dso_local global i32 0, align 4
@smb_tcpsndbuf = common dso_local global i32 0, align 4
@smb_tcprcvbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vc*, %struct.thread*)* @smb_nbst_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_nbst_create(%struct.smb_vc* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.smb_vc*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.nbpcb*, align 8
  store %struct.smb_vc* %0, %struct.smb_vc** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %6 = load i32, i32* @M_NBDATA, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call %struct.nbpcb* @malloc(i32 24, i32 %6, i32 %7)
  store %struct.nbpcb* %8, %struct.nbpcb** %5, align 8
  %9 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %10 = call i32 @bzero(%struct.nbpcb* %9, i32 24)
  %11 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %12 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 15, i32* %13, align 4
  %14 = load i32, i32* @NBST_CLOSED, align 4
  %15 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %16 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %18 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %19 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %18, i32 0, i32 2
  store %struct.smb_vc* %17, %struct.smb_vc** %19, align 8
  %20 = load i32, i32* @smb_tcpsndbuf, align 4
  %21 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %22 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @smb_tcprcvbuf, align 4
  %24 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %25 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.nbpcb*, %struct.nbpcb** %5, align 8
  %27 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %28 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %27, i32 0, i32 0
  store %struct.nbpcb* %26, %struct.nbpcb** %28, align 8
  ret i32 0
}

declare dso_local %struct.nbpcb* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.nbpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
