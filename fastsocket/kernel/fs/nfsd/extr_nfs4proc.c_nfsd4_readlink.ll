; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_readlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_readlink = type { i32*, %struct.svc_rqst* }

@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_readlink*)* @nfsd4_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_readlink(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_readlink* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.nfsd4_readlink*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %struct.nfsd4_readlink* %2, %struct.nfsd4_readlink** %6, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = load %struct.nfsd4_readlink*, %struct.nfsd4_readlink** %6, align 8
  %9 = getelementptr inbounds %struct.nfsd4_readlink, %struct.nfsd4_readlink* %8, i32 0, i32 1
  store %struct.svc_rqst* %7, %struct.svc_rqst** %9, align 8
  %10 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %10, i32 0, i32 0
  %12 = load %struct.nfsd4_readlink*, %struct.nfsd4_readlink** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd4_readlink, %struct.nfsd4_readlink* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load i32, i32* @nfs_ok, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
