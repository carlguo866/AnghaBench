; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_fs.c_jffs2_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_fs.c_jffs2_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32 }

@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.iattr*, %struct.iattr** %5, align 8
  %11 = call i32 @inode_change_ok(i32 %9, %struct.iattr* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iattr*, %struct.iattr** %5, align 8
  %21 = call i32 @jffs2_do_setattr(i32 %19, %struct.iattr* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %16
  %25 = load %struct.iattr*, %struct.iattr** %5, align 8
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATTR_MODE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @jffs2_acl_chmod(i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %24, %16
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @inode_change_ok(i32, %struct.iattr*) #1

declare dso_local i32 @jffs2_do_setattr(i32, %struct.iattr*) #1

declare dso_local i32 @jffs2_acl_chmod(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
