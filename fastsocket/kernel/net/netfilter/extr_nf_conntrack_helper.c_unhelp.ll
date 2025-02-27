; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_helper.c_unhelp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_helper.c_unhelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_helper = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_help = type { %struct.nf_conntrack_helper* }

@IPCT_HELPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_helper*)* @unhelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unhelp(%struct.nf_conntrack_tuple_hash* %0, %struct.nf_conntrack_helper* %1) #0 {
  %3 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %4 = alloca %struct.nf_conntrack_helper*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_conn_help*, align 8
  store %struct.nf_conntrack_tuple_hash* %0, %struct.nf_conntrack_tuple_hash** %3, align 8
  store %struct.nf_conntrack_helper* %1, %struct.nf_conntrack_helper** %4, align 8
  %7 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %3, align 8
  %8 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %7)
  store %struct.nf_conn* %8, %struct.nf_conn** %5, align 8
  %9 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %10 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %9)
  store %struct.nf_conn_help* %10, %struct.nf_conn_help** %6, align 8
  %11 = load %struct.nf_conn_help*, %struct.nf_conn_help** %6, align 8
  %12 = icmp ne %struct.nf_conn_help* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.nf_conn_help*, %struct.nf_conn_help** %6, align 8
  %15 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %14, i32 0, i32 0
  %16 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %15, align 8
  %17 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %4, align 8
  %18 = icmp eq %struct.nf_conntrack_helper* %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32, i32* @IPCT_HELPER, align 4
  %21 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %22 = call i32 @nf_conntrack_event(i32 %20, %struct.nf_conn* %21)
  %23 = load %struct.nf_conn_help*, %struct.nf_conn_help** %6, align 8
  %24 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %23, i32 0, i32 0
  %25 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %24, align 8
  %26 = call i32 @rcu_assign_pointer(%struct.nf_conntrack_helper* %25, i32* null)
  br label %27

27:                                               ; preds = %19, %13, %2
  ret i32 0
}

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_event(i32, %struct.nf_conn*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.nf_conntrack_helper*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
