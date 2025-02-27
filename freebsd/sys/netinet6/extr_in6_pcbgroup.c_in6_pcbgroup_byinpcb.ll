; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcbgroup.c_in6_pcbgroup_byinpcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcbgroup.c_in6_pcbgroup_byinpcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbgroup = type { i32 }
%struct.inpcb = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inpcbgroup* }

@INP_RSS_BUCKET_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inpcbgroup* @in6_pcbgroup_byinpcb(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %3 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %4 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %3, i32 0, i32 6
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %7 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %6, i32 0, i32 5
  %8 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %9 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %12 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %11, i32 0, i32 3
  %13 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.inpcbgroup* @in6_pcbgroup_bytuple(%struct.TYPE_2__* %5, i32* %7, i32 %10, i32* %12, i32 %15)
  ret %struct.inpcbgroup* %16
}

declare dso_local %struct.inpcbgroup* @in6_pcbgroup_bytuple(%struct.TYPE_2__*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
