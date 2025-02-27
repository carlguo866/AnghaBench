; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_btree.c_hfs_btree_close.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_btree.c_hfs_btree_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_btree = type { i32, i32, %struct.hfs_bnode** }
%struct.hfs_bnode = type { i32, i32, %struct.TYPE_2__*, %struct.hfs_bnode* }
%struct.TYPE_2__ = type { i32 }

@NODE_HASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"node %d:%d still has %d user(s)!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_btree_close(%struct.hfs_btree* %0) #0 {
  %2 = alloca %struct.hfs_btree*, align 8
  %3 = alloca %struct.hfs_bnode*, align 8
  %4 = alloca i32, align 4
  store %struct.hfs_btree* %0, %struct.hfs_btree** %2, align 8
  %5 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %6 = icmp ne %struct.hfs_btree* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %68

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %58, %8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NODE_HASH_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %50, %13
  %15 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %16 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %15, i32 0, i32 2
  %17 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hfs_bnode*, %struct.hfs_bnode** %17, i64 %19
  %21 = load %struct.hfs_bnode*, %struct.hfs_bnode** %20, align 8
  store %struct.hfs_bnode* %21, %struct.hfs_bnode** %3, align 8
  %22 = icmp ne %struct.hfs_bnode* %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %14
  %24 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %25 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %24, i32 0, i32 3
  %26 = load %struct.hfs_bnode*, %struct.hfs_bnode** %25, align 8
  %27 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %28 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %27, i32 0, i32 2
  %29 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hfs_bnode*, %struct.hfs_bnode** %29, i64 %31
  store %struct.hfs_bnode* %26, %struct.hfs_bnode** %32, align 8
  %33 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %34 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %33, i32 0, i32 0
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %23
  %38 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %39 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %44 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %47 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %46, i32 0, i32 0
  %48 = call i64 @atomic_read(i32* %47)
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i64 %48)
  br label %50

50:                                               ; preds = %37, %23
  %51 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %52 = call i32 @hfs_bnode_free(%struct.hfs_bnode* %51)
  %53 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %54 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  br label %14

57:                                               ; preds = %14
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %9

61:                                               ; preds = %9
  %62 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %63 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @iput(i32 %64)
  %66 = load %struct.hfs_btree*, %struct.hfs_btree** %2, align 8
  %67 = call i32 @kfree(%struct.hfs_btree* %66)
  br label %68

68:                                               ; preds = %61, %7
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i64) #1

declare dso_local i32 @hfs_bnode_free(%struct.hfs_bnode*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @kfree(%struct.hfs_btree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
