; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_root_vptocnp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_root_vptocnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_vptocnp_args = type { i32*, i32, i32**, i32 }

@zfsctl_root_vptocnp.dotzfs_name = internal constant [4 x i8] c".zfs", align 1
@ENOMEM = common dso_local global i32 0, align 4
@zfsctl_fs_root_vnode = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_vptocnp_args*)* @zfsctl_root_vptocnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsctl_root_vptocnp(%struct.vop_vptocnp_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_vptocnp_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.vop_vptocnp_args* %0, %struct.vop_vptocnp_args** %3, align 8
  %6 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 4
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = call i32 @SET_ERROR(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @zfsctl_fs_root_vnode, align 4
  %20 = load i32, i32* @LK_SHARED, align 4
  %21 = call i32 @vn_vget_ino_gen(i32 %18, i32 %19, i32* null, i32 %20, i32** %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %15
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @VOP_UNLOCK(i32* %28, i32 0)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  store i32* %30, i32** %33, align 8
  %34 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %35 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %43, %47
  %49 = call i32 @bcopy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zfsctl_root_vptocnp.dotzfs_name, i64 0, i64 0), i32 %48, i32 4)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %27, %24, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vn_vget_ino_gen(i32, i32, i32*, i32, i32**) #1

declare dso_local i32 @VOP_UNLOCK(i32*, i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
