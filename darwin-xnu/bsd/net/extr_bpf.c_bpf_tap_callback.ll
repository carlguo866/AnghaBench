; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_tap_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_tap_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @bpf_tap_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_tap_callback(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %8 = call i32* @mbuf_pkthdr_rcvif(%struct.mbuf* %7)
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @bpf_tap_mbuf(%struct.ifnet* %5, i32 0, %struct.mbuf* %6, i32* null, i32 0, i32 %10)
  ret i32 0
}

declare dso_local i32 @bpf_tap_mbuf(%struct.ifnet*, i32, %struct.mbuf*, i32*, i32, i32) #1

declare dso_local i32* @mbuf_pkthdr_rcvif(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
