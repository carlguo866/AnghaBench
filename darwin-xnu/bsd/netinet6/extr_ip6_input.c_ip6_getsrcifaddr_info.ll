; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_getsrcifaddr_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_getsrcifaddr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@PKTF_IFAINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_getsrcifaddr_info(%struct.mbuf* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %9 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @M_PKTHDR, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @VERIFY(i32 %12)
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PKTF_IFAINFO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %41

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %31
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
