; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_free_openowner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_free_openowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stateowner = type { i32 }
%struct.nfs4_openowner = type { i32 }

@openowner_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_stateowner*)* @nfs4_free_openowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_free_openowner(%struct.nfs4_stateowner* %0) #0 {
  %2 = alloca %struct.nfs4_stateowner*, align 8
  %3 = alloca %struct.nfs4_openowner*, align 8
  store %struct.nfs4_stateowner* %0, %struct.nfs4_stateowner** %2, align 8
  %4 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %2, align 8
  %5 = call %struct.nfs4_openowner* @openowner(%struct.nfs4_stateowner* %4)
  store %struct.nfs4_openowner* %5, %struct.nfs4_openowner** %3, align 8
  %6 = load i32, i32* @openowner_slab, align 4
  %7 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %3, align 8
  %8 = call i32 @kmem_cache_free(i32 %6, %struct.nfs4_openowner* %7)
  ret void
}

declare dso_local %struct.nfs4_openowner* @openowner(%struct.nfs4_stateowner*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_openowner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
