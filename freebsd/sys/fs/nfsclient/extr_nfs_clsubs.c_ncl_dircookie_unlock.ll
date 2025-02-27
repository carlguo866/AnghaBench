; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_dircookie_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_dircookie_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsnode = type { i32 }

@NDIRCOOKIELK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncl_dircookie_unlock(%struct.nfsnode* %0) #0 {
  %2 = alloca %struct.nfsnode*, align 8
  store %struct.nfsnode* %0, %struct.nfsnode** %2, align 8
  %3 = load %struct.nfsnode*, %struct.nfsnode** %2, align 8
  %4 = call i32 @NFSLOCKNODE(%struct.nfsnode* %3)
  %5 = load i32, i32* @NDIRCOOKIELK, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.nfsnode*, %struct.nfsnode** %2, align 8
  %8 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.nfsnode*, %struct.nfsnode** %2, align 8
  %12 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %11, i32 0, i32 0
  %13 = call i32 @wakeup(i32* %12)
  %14 = load %struct.nfsnode*, %struct.nfsnode** %2, align 8
  %15 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %14)
  ret void
}

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
