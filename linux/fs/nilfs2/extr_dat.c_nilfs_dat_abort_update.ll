; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_abort_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_abort_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_dat_abort_update(%struct.inode* %0, %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_palloc_req*, align 8
  %6 = alloca %struct.nilfs_palloc_req*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %5, align 8
  store %struct.nilfs_palloc_req* %2, %struct.nilfs_palloc_req** %6, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %9 = call i32 @nilfs_dat_abort_end(%struct.inode* %7, %struct.nilfs_palloc_req* %8)
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %6, align 8
  %12 = call i32 @nilfs_dat_abort_alloc(%struct.inode* %10, %struct.nilfs_palloc_req* %11)
  ret void
}

declare dso_local i32 @nilfs_dat_abort_end(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @nilfs_dat_abort_alloc(%struct.inode*, %struct.nilfs_palloc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
