; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_reflink_xattr_tree_args = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64, i32, i32, i8*)* @ocfs2_reflink_xattr_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink_xattr_rec(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ocfs2_reflink_xattr_tree_args*, align 8
  %17 = alloca %struct.ocfs2_super*, align 8
  %18 = alloca %struct.ocfs2_alloc_context*, align 8
  %19 = alloca %struct.ocfs2_alloc_context*, align 8
  %20 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = bitcast i8* %21 to %struct.ocfs2_reflink_xattr_tree_args*
  store %struct.ocfs2_reflink_xattr_tree_args* %22, %struct.ocfs2_reflink_xattr_tree_args** %16, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ocfs2_super* @OCFS2_SB(i32 %25)
  store %struct.ocfs2_super* %26, %struct.ocfs2_super** %17, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %18, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %19, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @trace_ocfs2_reflink_xattr_rec(i64 %27, i32 %28)
  %30 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %16, align 8
  %31 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @INODE_CACHE(i32 %34)
  %36 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %16, align 8
  %37 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ocfs2_init_xattr_tree_extent_tree(%struct.ocfs2_extent_tree* %20, i32 %35, i32 %38)
  %40 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %16, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ocfs2_lock_reflink_xattr_rec_allocators(%struct.ocfs2_reflink_xattr_tree_args* %40, %struct.ocfs2_extent_tree* %20, i64 %41, i32 %42, i32* %14, %struct.ocfs2_alloc_context** %18, %struct.ocfs2_alloc_context** %19)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %6
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %80

49:                                               ; preds = %6
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %50, i32 %51)
  store i32* %52, i32** %15, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = call i64 @IS_ERR(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @PTR_ERR(i32* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %80

61:                                               ; preds = %49
  %62 = load i32*, i32** %15, align 8
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %16, align 8
  %65 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %66 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @ocfs2_reflink_xattr_buckets(i32* %62, %struct.inode* %63, %struct.ocfs2_reflink_xattr_tree_args* %64, %struct.ocfs2_extent_tree* %20, %struct.ocfs2_alloc_context* %65, %struct.ocfs2_alloc_context* %66, i64 %67, i32 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %76

76:                                               ; preds = %73, %61
  %77 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %77, i32* %78)
  br label %80

80:                                               ; preds = %76, %56, %46
  %81 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %82 = icmp ne %struct.ocfs2_alloc_context* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %85 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %88 = icmp ne %struct.ocfs2_alloc_context* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %91 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %13, align 4
  ret i32 %93
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @trace_ocfs2_reflink_xattr_rec(i64, i32) #1

declare dso_local i32 @ocfs2_init_xattr_tree_extent_tree(%struct.ocfs2_extent_tree*, i32, i32) #1

declare dso_local i32 @INODE_CACHE(i32) #1

declare dso_local i32 @ocfs2_lock_reflink_xattr_rec_allocators(%struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_extent_tree*, i64, i32, i32*, %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_reflink_xattr_buckets(i32*, %struct.inode*, %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_extent_tree*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, i64, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
