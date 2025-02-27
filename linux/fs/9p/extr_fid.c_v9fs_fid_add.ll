; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_fid.c_v9fs_fid_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_fid.c_v9fs_fid_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.p9_fid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_fid_add(%struct.dentry* %0, %struct.p9_fid* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.p9_fid*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %4, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %10 = call i32 @__add_fid(%struct.dentry* %8, %struct.p9_fid* %9)
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = call i32 @spin_unlock(i32* %12)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__add_fid(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
