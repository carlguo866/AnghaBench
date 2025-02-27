; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frags_exit_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frags_exit_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_frags = type { i64 }
%struct.inet_frags = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_frags_exit_net(%struct.netns_frags* %0, %struct.inet_frags* %1) #0 {
  %3 = alloca %struct.netns_frags*, align 8
  %4 = alloca %struct.inet_frags*, align 8
  store %struct.netns_frags* %0, %struct.netns_frags** %3, align 8
  store %struct.inet_frags* %1, %struct.inet_frags** %4, align 8
  %5 = load %struct.netns_frags*, %struct.netns_frags** %3, align 8
  %6 = getelementptr inbounds %struct.netns_frags, %struct.netns_frags* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = call i32 (...) @local_bh_disable()
  %8 = load %struct.netns_frags*, %struct.netns_frags** %3, align 8
  %9 = load %struct.inet_frags*, %struct.inet_frags** %4, align 8
  %10 = call i32 @inet_frag_evictor(%struct.netns_frags* %8, %struct.inet_frags* %9)
  %11 = call i32 (...) @local_bh_enable()
  ret void
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @inet_frag_evictor(%struct.netns_frags*, %struct.inet_frags*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
