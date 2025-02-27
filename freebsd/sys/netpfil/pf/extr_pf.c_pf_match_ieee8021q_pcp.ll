; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_match_ieee8021q_pcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_match_ieee8021q_pcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }

@MTAG_8021Q = common dso_local global i32 0, align 4
@MTAG_8021Q_PCP_IN = common dso_local global i32 0, align 4
@PF_PRIO_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.mbuf*)* @pf_match_ieee8021q_pcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_match_ieee8021q_pcp(i64 %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.m_tag*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %9 = load i32, i32* @MTAG_8021Q, align 4
  %10 = load i32, i32* @MTAG_8021Q_PCP_IN, align 4
  %11 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %8, i32 %9, i32 %10, i32* null)
  store %struct.m_tag* %11, %struct.m_tag** %6, align 8
  %12 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %13 = icmp eq %struct.m_tag* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @PF_PRIO_ZERO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %22 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %21, i64 1
  %23 = bitcast %struct.m_tag* %22 to i64*
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %20, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
