; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_match_clientid_establishment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_match_clientid_establishment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_client*, i32)* @match_clientid_establishment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_clientid_establishment(%struct.nfs4_client* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfs4_client* %0, %struct.nfs4_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %7 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
