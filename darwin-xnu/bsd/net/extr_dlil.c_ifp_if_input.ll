; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifp_if_input.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifp_if_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.ifnet_stat_increment_param = type { i32 }
%struct.thread = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*, %struct.mbuf*, %struct.ifnet_stat_increment_param*, i32, %struct.thread*)* @ifp_if_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifp_if_input(%struct.ifnet* %0, %struct.mbuf* %1, %struct.mbuf* %2, %struct.ifnet_stat_increment_param* %3, i32 %4, %struct.thread* %5) #0 {
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.ifnet_stat_increment_param*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.thread*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.ifnet_stat_increment_param* %3, %struct.ifnet_stat_increment_param** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.thread* %5, %struct.thread** %12, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %14 = call i32 @m_freem_list(%struct.mbuf* %13)
  %15 = load i32, i32* @ENXIO, align 4
  ret i32 %15
}

declare dso_local i32 @m_freem_list(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
