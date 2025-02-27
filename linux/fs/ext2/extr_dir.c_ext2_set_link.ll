; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_dir.c_ext2_set_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_dir.c_ext2_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_dir_entry_2 = type { i32, i32 }
%struct.page = type { i32 }
%struct.inode = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EXT2_BTREE_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_set_link(%struct.inode* %0, %struct.ext2_dir_entry_2* %1, %struct.page* %2, %struct.inode* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext2_dir_entry_2*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext2_dir_entry_2* %1, %struct.ext2_dir_entry_2** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.page*, %struct.page** %8, align 8
  %15 = call i32 @page_offset(%struct.page* %14)
  %16 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %7, align 8
  %17 = bitcast %struct.ext2_dir_entry_2* %16 to i8*
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = call i64 @page_address(%struct.page* %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = ptrtoint i8* %19 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %7, align 8
  %28 = getelementptr inbounds %struct.ext2_dir_entry_2, %struct.ext2_dir_entry_2* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ext2_rec_len_from_disk(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.page*, %struct.page** %8, align 8
  %32 = call i32 @lock_page(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @ext2_prepare_chunk(%struct.page* %33, i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %7, align 8
  %44 = getelementptr inbounds %struct.ext2_dir_entry_2, %struct.ext2_dir_entry_2* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %7, align 8
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = call i32 @ext2_set_de_type(%struct.ext2_dir_entry_2* %45, %struct.inode* %46)
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @ext2_commit_chunk(%struct.page* %48, i32 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.page*, %struct.page** %8, align 8
  %53 = call i32 @ext2_put_page(%struct.page* %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %5
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call i32 @current_time(%struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %5
  %64 = load i32, i32* @EXT2_BTREE_FL, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %65
  store i32 %70, i32* %68, align 4
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = call i32 @mark_inode_dirty(%struct.inode* %71)
  ret void
}

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @ext2_rec_len_from_disk(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @ext2_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ext2_set_de_type(%struct.ext2_dir_entry_2*, %struct.inode*) #1

declare dso_local i32 @ext2_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @ext2_put_page(%struct.page*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
