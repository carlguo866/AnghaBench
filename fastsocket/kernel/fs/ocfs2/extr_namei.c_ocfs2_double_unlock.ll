; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_double_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_double_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.inode*)* @ocfs2_double_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_double_unlock(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call i32 @ocfs2_inode_unlock(%struct.inode* %5, i32 1)
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = icmp ne %struct.inode* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @ocfs2_inode_unlock(%struct.inode* %11, i32 1)
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
