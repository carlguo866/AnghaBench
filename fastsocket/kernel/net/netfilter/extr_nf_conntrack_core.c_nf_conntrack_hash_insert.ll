; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_hash_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_conntrack_hash_insert(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %7 = call %struct.net* @nf_ct_net(%struct.nf_conn* %6)
  store %struct.net* %7, %struct.net** %3, align 8
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %10 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @hash_conntrack(%struct.net* %8, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.net*, %struct.net** %3, align 8
  %17 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %18 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @hash_conntrack(%struct.net* %16, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @__nf_conntrack_hash_insert(%struct.nf_conn* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @hash_conntrack(%struct.net*, i32*) #1

declare dso_local i32 @__nf_conntrack_hash_insert(%struct.nf_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
