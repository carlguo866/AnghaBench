; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mnt_set_mountpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mnt_set_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.vfsmount = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mnt_set_mountpoint(%struct.vfsmount* %0, %struct.dentry* %1, %struct.vfsmount* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.vfsmount* %2, %struct.vfsmount** %6, align 8
  %7 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %8 = call i32 @mntget(%struct.vfsmount* %7)
  %9 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %10 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call i32 @dget(%struct.dentry* %11)
  %13 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %14 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  ret void
}

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
