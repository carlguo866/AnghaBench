; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_btree.c_xfs_btree_dup_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_btree.c_xfs_btree_dup_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32**, i32*, i32*, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* (%struct.TYPE_12__*)* }
%struct.TYPE_11__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_btree_dup_cursor(%struct.TYPE_12__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 7
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__* (%struct.TYPE_12__*)*, %struct.TYPE_12__* (%struct.TYPE_12__*)** %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = call %struct.TYPE_12__* %22(%struct.TYPE_12__* %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %10, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %115, %2
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %118

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %6, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %107

71:                                               ; preds = %36
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @XFS_BUF_ADDR(i32* %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xfs_trans_read_buf(%struct.TYPE_11__* %72, i32* %73, i32 %76, i32 %78, i32 %81, i32 0, i32** %6)
  store i32 %82, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @xfs_btree_del_cursor(%struct.TYPE_12__* %85, i32 %86)
  %88 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %88, align 8
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %121

90:                                               ; preds = %71
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  store i32* %91, i32** %97, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = ptrtoint i32* %98 to i32
  %100 = call i32 @ASSERT(i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @XFS_BUF_GETERROR(i32* %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @ASSERT(i32 %105)
  br label %114

107:                                              ; preds = %36
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %107, %90
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %30

118:                                              ; preds = %30
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %120 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %120, align 8
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %84
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @xfs_trans_read_buf(%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @XFS_BUF_ADDR(i32*) #1

declare dso_local i32 @xfs_btree_del_cursor(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_BUF_GETERROR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
