; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_check_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_check_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.nfs4_stateid = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_fh*, %struct.nfs4_stateid*)* @nfs4_check_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_check_fh(%struct.svc_fh* %0, %struct.nfs4_stateid* %1) #0 {
  %3 = alloca %struct.svc_fh*, align 8
  %4 = alloca %struct.nfs4_stateid*, align 8
  store %struct.svc_fh* %0, %struct.svc_fh** %3, align 8
  store %struct.nfs4_stateid* %1, %struct.nfs4_stateid** %4, align 8
  %5 = load %struct.svc_fh*, %struct.svc_fh** %3, align 8
  %6 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %11 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %9, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
