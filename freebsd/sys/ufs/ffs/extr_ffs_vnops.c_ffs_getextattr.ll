; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_getextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_getextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getextattr_args = type { i32*, i32, i32, %struct.TYPE_5__*, i32*, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.inode = type { i32, i32* }

@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getextattr_args*)* @ffs_getextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_getextattr(%struct.vop_getextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getextattr_args*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vop_getextattr_args* %0, %struct.vop_getextattr_args** %3, align 8
  %10 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = call %struct.inode* @VTOI(%struct.TYPE_5__* %12)
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VCHR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %1
  %22 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VBLK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %1
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %30, i32* %2, align 4
  br label %121

31:                                               ; preds = %21
  %32 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %36 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VREAD, align 4
  %45 = call i32 @extattr_check_cred(%struct.TYPE_5__* %34, i32 %37, i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %121

50:                                               ; preds = %31
  %51 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %52 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %55 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %58 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ffs_open_ea(%struct.TYPE_5__* %53, i32 %56, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %121

65:                                               ; preds = %50
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %5, align 8
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %7, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %75 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %78 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ffs_findextattr(i32* %72, i32 %73, i32 %76, i32 %79, i32* null, i32** %6)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  %84 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %85 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %91 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  store i32 %89, i32* %92, align 4
  br label %106

93:                                               ; preds = %83
  %94 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %95 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %102 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @uiomove(i32* %99, i32 %100, i32* %103)
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %98, %93
  br label %106

106:                                              ; preds = %105, %88
  br label %109

107:                                              ; preds = %65
  %108 = load i32, i32* @ENOATTR, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %106
  %110 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %111 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %110, i32 0, i32 3
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %114 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %117 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ffs_close_ea(%struct.TYPE_5__* %112, i32 0, i32 %115, i32 %118)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %109, %63, %48, %29
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.inode* @VTOI(%struct.TYPE_5__*) #1

declare dso_local i32 @extattr_check_cred(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @ffs_open_ea(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ffs_findextattr(i32*, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @uiomove(i32*, i32, i32*) #1

declare dso_local i32 @ffs_close_ea(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
