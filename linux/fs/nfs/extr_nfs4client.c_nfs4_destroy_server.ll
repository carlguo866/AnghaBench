; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_destroy_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_destroy_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }

@freeme = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*)* @nfs4_destroy_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_destroy_server(%struct.nfs_server* %0) #0 {
  %2 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %2, align 8
  %3 = load i32, i32* @freeme, align 4
  %4 = call i32 @LIST_HEAD(i32 %3)
  %5 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %6 = call i32 @nfs_server_return_all_delegations(%struct.nfs_server* %5)
  %7 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %8 = call i32 @unset_pnfs_layoutdriver(%struct.nfs_server* %7)
  %9 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %10 = call i32 @nfs4_purge_state_owners(%struct.nfs_server* %9, i32* @freeme)
  %11 = call i32 @nfs4_free_state_owners(i32* @freeme)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @nfs_server_return_all_delegations(%struct.nfs_server*) #1

declare dso_local i32 @unset_pnfs_layoutdriver(%struct.nfs_server*) #1

declare dso_local i32 @nfs4_purge_state_owners(%struct.nfs_server*, i32*) #1

declare dso_local i32 @nfs4_free_state_owners(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
