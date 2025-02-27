; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_set_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_set_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { i8 }

@NFS4_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nfs4_ol_stateid*)* @set_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_access(i32 %0, %struct.nfs4_ol_stateid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_ol_stateid*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.nfs4_ol_stateid* %1, %struct.nfs4_ol_stateid** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = shl i32 1, %6
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %5, align 1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NFS4_SHARE_ACCESS_BOTH, align 4
  %11 = icmp sgt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %4, align 8
  %17 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, %15
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %17, align 1
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
