; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_acl.c_ext3_xattr_get_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_acl.c_ext3_xattr_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@POSIX_ACL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64)* @ext3_xattr_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_xattr_get_acl(%struct.inode* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @POSIX_ACL, align 4
  %16 = call i32 @test_opt(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.posix_acl* @ext3_get_acl(%struct.inode* %22, i32 %23)
  store %struct.posix_acl* %24, %struct.posix_acl** %10, align 8
  %25 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %26 = call i64 @IS_ERR(%struct.posix_acl* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %30 = call i32 @PTR_ERR(%struct.posix_acl* %29)
  store i32 %30, i32* %5, align 4
  br label %45

31:                                               ; preds = %21
  %32 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %33 = icmp eq %struct.posix_acl* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @ENODATA, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %45

37:                                               ; preds = %31
  %38 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %38, i8* %39, i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %43 = call i32 @posix_acl_release(%struct.posix_acl* %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %37, %34, %28, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @test_opt(i32, i32) #1

declare dso_local %struct.posix_acl* @ext3_get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_to_xattr(%struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
