; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_expect_iter_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_expect_iter_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32 }
%struct.nf_conn_help = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_expect*, i8*)* @expect_iter_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect_iter_name(%struct.nf_conntrack_expect* %0, i8* %1) #0 {
  %3 = alloca %struct.nf_conntrack_expect*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nf_conn_help*, align 8
  %6 = alloca i8*, align 8
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %9 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nf_conn_help* @nfct_help(i32 %10)
  store %struct.nf_conn_help* %11, %struct.nf_conn_help** %5, align 8
  %12 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %13 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local %struct.nf_conn_help* @nfct_help(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
