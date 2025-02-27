; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_fallocate_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_fallocate_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64 }
%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, i32)* @fallocate_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fallocate_chunk(%struct.inode* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %17)
  store %struct.gfs2_inode* %18, %struct.gfs2_inode** %10, align 8
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = ashr i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %27 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %26, %struct.buffer_head** %11)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %123

33:                                               ; preds = %4
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %35 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %38 = call i32 @gfs2_trans_add_meta(i32 %36, %struct.buffer_head* %37)
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %40 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %44 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %43, i32* null)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %119

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %96, %85, %50
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %51
  %55 = bitcast %struct.buffer_head* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %55, i8 0, i64 12, i1 false)
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = call i32 @set_buffer_zeronew(%struct.buffer_head* %16)
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @gfs2_block_map(%struct.inode* %60, i32 %61, %struct.buffer_head* %16, i32 1)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %119

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %8, align 8
  %72 = sub nsw i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = lshr i32 %74, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add i32 %81, %80
  store i32 %82, i32* %15, align 4
  %83 = call i32 @buffer_new(%struct.buffer_head* %16)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %67
  br label %51

86:                                               ; preds = %67
  %87 = call i32 @buffer_zeronew(%struct.buffer_head* %16)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  br label %119

96:                                               ; preds = %86
  br label %51

97:                                               ; preds = %51
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %14, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %14, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @i_size_write(%struct.inode* %111, i64 %114)
  br label %116

116:                                              ; preds = %110, %105, %97
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  %118 = call i32 @mark_inode_dirty(%struct.inode* %117)
  br label %119

119:                                              ; preds = %116, %93, %66, %48
  %120 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %121 = call i32 @brelse(%struct.buffer_head* %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %119, %31
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @set_buffer_zeronew(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_block_map(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @buffer_zeronew(%struct.buffer_head*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
