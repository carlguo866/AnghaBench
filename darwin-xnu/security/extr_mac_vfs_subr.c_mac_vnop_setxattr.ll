; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs_subr.c_mac_vnop_setxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs_subr.c_mac_vnop_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_VNODE = common dso_local global i32 0, align 4
@FSE_XATTR_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnop_setxattr(%struct.vnode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @XATTR_NOSECURITY, align 4
  store i32 %17, i32* %11, align 4
  %18 = call i32 @UIO_SIZEOF(i32 1)
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @vfs_isrdonly(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @EROFS, align 4
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %48

29:                                               ; preds = %4
  %30 = call i32 (...) @vfs_context_current()
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @UIO_SYSSPACE, align 4
  %32 = load i32, i32* @UIO_WRITE, align 4
  %33 = getelementptr inbounds i8, i8* %21, i64 0
  %34 = trunc i64 %19 to i32
  %35 = call i32 @uio_createwithbuffer(i32 1, i32 0, i32 %31, i32 %32, i8* %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @CAST_USER_ADDR_T(i8* %37)
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @uio_addiov(i32 %36, i32 %38, i64 %39)
  %41 = load %struct.vnode*, %struct.vnode** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @vn_setxattr(%struct.vnode* %41, i8* %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %48

48:                                               ; preds = %29, %27
  %49 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @vfs_isrdonly(i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i64) #1

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @vn_setxattr(%struct.vnode*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
