; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_xattr.c_generic_removexattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_xattr.c_generic_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xattr_handler = type { i32 (%struct.inode.0*, i8*, i32*, i32, i32)* }
%struct.inode.0 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_removexattr(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xattr_handler*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.xattr_handler* @xattr_resolve_name(i32 %15, i8** %5)
  store %struct.xattr_handler* %16, %struct.xattr_handler** %6, align 8
  %17 = load %struct.xattr_handler*, %struct.xattr_handler** %6, align 8
  %18 = icmp ne %struct.xattr_handler* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.xattr_handler*, %struct.xattr_handler** %6, align 8
  %24 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %23, i32 0, i32 0
  %25 = load i32 (%struct.inode.0*, i8*, i32*, i32, i32)*, i32 (%struct.inode.0*, i8*, i32*, i32, i32)** %24, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = bitcast %struct.inode* %26 to %struct.inode.0*
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @XATTR_REPLACE, align 4
  %30 = call i32 %25(%struct.inode.0* %27, i8* %28, i32* null, i32 0, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.xattr_handler* @xattr_resolve_name(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
