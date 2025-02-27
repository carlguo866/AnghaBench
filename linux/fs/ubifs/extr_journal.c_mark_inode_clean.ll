; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_mark_inode_clean.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_mark_inode_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_inode = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_inode*)* @mark_inode_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_inode_clean(%struct.ubifs_info* %0, %struct.ubifs_inode* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_inode* %1, %struct.ubifs_inode** %4, align 8
  %5 = load %struct.ubifs_inode*, %struct.ubifs_inode** %4, align 8
  %6 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = load %struct.ubifs_inode*, %struct.ubifs_inode** %4, align 8
  %12 = call i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info* %10, %struct.ubifs_inode* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.ubifs_inode*, %struct.ubifs_inode** %4, align 8
  %15 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  ret void
}

declare dso_local i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info*, %struct.ubifs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
