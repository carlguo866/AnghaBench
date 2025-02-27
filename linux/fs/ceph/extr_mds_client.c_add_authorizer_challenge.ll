; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_add_authorizer_challenge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_add_authorizer_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { %struct.ceph_mds_session* }
%struct.ceph_mds_session = type { %struct.TYPE_8__, %struct.ceph_mds_client* }
%struct.TYPE_8__ = type { i32 }
%struct.ceph_mds_client = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ceph_auth_client* }
%struct.ceph_auth_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*, i8*, i32)* @add_authorizer_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_authorizer_challenge(%struct.ceph_connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_mds_session*, align 8
  %8 = alloca %struct.ceph_mds_client*, align 8
  %9 = alloca %struct.ceph_auth_client*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %10, i32 0, i32 0
  %12 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %11, align 8
  store %struct.ceph_mds_session* %12, %struct.ceph_mds_session** %7, align 8
  %13 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %7, align 8
  %14 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %13, i32 0, i32 1
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %14, align 8
  store %struct.ceph_mds_client* %15, %struct.ceph_mds_client** %8, align 8
  %16 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %17 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %22, align 8
  store %struct.ceph_auth_client* %23, %struct.ceph_auth_client** %9, align 8
  %24 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %9, align 8
  %25 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %7, align 8
  %26 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ceph_auth_add_authorizer_challenge(%struct.ceph_auth_client* %24, i32 %28, i8* %29, i32 %30)
  ret i32 %31
}

declare dso_local i32 @ceph_auth_add_authorizer_challenge(%struct.ceph_auth_client*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
