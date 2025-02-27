; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_toe_l2_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_toe_l2_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toedev = type { i32 }
%struct.ifnet = type { i64, i64 }
%struct.sockaddr = type { i32 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@IFNET_PCP_NONE = common dso_local global i64 0, align 8
@IFT_L2VLAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @toe_l2_resolve(%struct.toedev* %0, %struct.ifnet* %1, %struct.sockaddr* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.toedev*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.toedev* %0, %struct.toedev** %6, align 8
  store %struct.ifnet* %1, %struct.ifnet** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* @EPROTONOSUPPORT, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
