; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_to_sk_saddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_to_sk_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }
%struct.sock = type { %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.sctp_addr*, %struct.sock*)* @sctp_v6_to_sk_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v6_to_sk_saddr(%union.sctp_addr* %0, %struct.sock* %1) #0 {
  %3 = alloca %union.sctp_addr*, align 8
  %4 = alloca %struct.sock*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %5 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %6 = bitcast %union.sctp_addr* %5 to %struct.TYPE_9__*
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  store i64 0, i64* %21, align 8
  %22 = call i64 @htonl(i32 65535)
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  store i64 %22, i64* %27, align 8
  %28 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %29 = bitcast %union.sctp_addr* %28 to %struct.TYPE_7__*
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 3
  store i64 %32, i64* %37, align 8
  br label %46

38:                                               ; preds = %2
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %42 = bitcast %union.sctp_addr* %41 to %struct.TYPE_8__*
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = bitcast %struct.TYPE_10__* %40 to i8*
  %45 = bitcast %struct.TYPE_10__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 8, i1 false)
  br label %46

46:                                               ; preds = %38, %11
  ret void
}

declare dso_local i64 @htonl(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
