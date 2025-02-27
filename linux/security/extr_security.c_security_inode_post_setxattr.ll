; ModuleID = '/home/carl/AnghaBench/linux/security/extr_security.c_security_inode_post_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_security.c_security_inode_post_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@inode_post_setxattr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @security_inode_post_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = call i32 @d_backing_inode(%struct.dentry* %11)
  %13 = call i32 @IS_PRIVATE(i32 %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %30

17:                                               ; preds = %5
  %18 = load i32, i32* @inode_post_setxattr, align 4
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @call_void_hook(i32 %18, %struct.dentry* %19, i8* %20, i8* %21, i64 %22, i32 %23)
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @evm_inode_post_setxattr(%struct.dentry* %25, i8* %26, i8* %27, i64 %28)
  br label %30

30:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_PRIVATE(i32) #1

declare dso_local i32 @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @call_void_hook(i32, %struct.dentry*, i8*, i8*, i64, i32) #1

declare dso_local i32 @evm_inode_post_setxattr(%struct.dentry*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
