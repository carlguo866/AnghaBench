; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_netem_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_netem_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netem_sched_data = type { %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_netem_qopt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_netem_corr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_netem_reorder = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_netem_corrupt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_NETEM_CORR = common dso_local global i32 0, align 4
@TCA_NETEM_REORDER = common dso_local global i32 0, align 4
@TCA_NETEM_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @netem_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netem_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netem_sched_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.tc_netem_qopt, align 4
  %10 = alloca %struct.tc_netem_corr, align 4
  %11 = alloca %struct.tc_netem_reorder, align 4
  %12 = alloca %struct.tc_netem_corrupt, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %14 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.netem_sched_data* %14, %struct.netem_sched_data** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.nlattr*
  store %struct.nlattr* %18, %struct.nlattr** %8, align 8
  %19 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %20 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %9, i32 0, i32 10
  store i32 %21, i32* %22, align 4
  %23 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %24 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %9, i32 0, i32 9
  store i32 %25, i32* %26, align 4
  %27 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %28 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %9, i32 0, i32 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %32 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %9, i32 0, i32 7
  store i32 %33, i32* %34, align 4
  %35 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %36 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %9, i32 0, i32 6
  store i32 %37, i32* %38, align 4
  %39 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %40 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %9, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i32, i32* @TCA_OPTIONS, align 4
  %45 = bitcast %struct.tc_netem_qopt* %9 to %struct.tc_netem_reorder*
  %46 = call i32 @NLA_PUT(%struct.sk_buff* %43, i32 %44, i32 44, %struct.tc_netem_reorder* %45)
  %47 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %48 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.tc_netem_corr, %struct.tc_netem_corr* %10, i32 0, i32 4
  store i32 %50, i32* %51, align 4
  %52 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %53 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.tc_netem_corr, %struct.tc_netem_corr* %10, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %58 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.tc_netem_corr, %struct.tc_netem_corr* %10, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load i32, i32* @TCA_NETEM_CORR, align 4
  %64 = bitcast %struct.tc_netem_corr* %10 to %struct.tc_netem_reorder*
  %65 = call i32 @NLA_PUT(%struct.sk_buff* %62, i32 %63, i32 44, %struct.tc_netem_reorder* %64)
  %66 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %67 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.tc_netem_reorder, %struct.tc_netem_reorder* %11, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %71 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.tc_netem_reorder, %struct.tc_netem_reorder* %11, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load i32, i32* @TCA_NETEM_REORDER, align 4
  %77 = call i32 @NLA_PUT(%struct.sk_buff* %75, i32 %76, i32 44, %struct.tc_netem_reorder* %11)
  %78 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %79 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.tc_netem_corrupt, %struct.tc_netem_corrupt* %12, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %83 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.tc_netem_corrupt, %struct.tc_netem_corrupt* %12, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load i32, i32* @TCA_NETEM_CORRUPT, align 4
  %89 = bitcast %struct.tc_netem_corrupt* %12 to %struct.tc_netem_reorder*
  %90 = call i32 @NLA_PUT(%struct.sk_buff* %87, i32 %88, i32 44, %struct.tc_netem_reorder* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i8* @skb_tail_pointer(%struct.sk_buff* %91)
  %93 = load i8*, i8** %7, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %99 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %3, align 4
  br label %107

103:                                              ; No predecessors!
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @nlmsg_trim(%struct.sk_buff* %104, i8* %105)
  store i32 -1, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %2
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tc_netem_reorder*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
