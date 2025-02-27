; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_nsfs.c_ns_prune_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_nsfs.c_ns_prune_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { %struct.ns_common* }
%struct.ns_common = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @ns_prune_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns_prune_dentry(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ns_common*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = call %struct.inode* @d_inode(%struct.dentry* %5)
  store %struct.inode* %6, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = icmp ne %struct.inode* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.ns_common*, %struct.ns_common** %11, align 8
  store %struct.ns_common* %12, %struct.ns_common** %4, align 8
  %13 = load %struct.ns_common*, %struct.ns_common** %4, align 8
  %14 = getelementptr inbounds %struct.ns_common, %struct.ns_common* %13, i32 0, i32 0
  %15 = call i32 @atomic_long_set(i32* %14, i32 0)
  br label %16

16:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
