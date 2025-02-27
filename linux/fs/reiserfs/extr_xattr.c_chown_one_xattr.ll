; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr.c_chown_one_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr.c_chown_one_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*)* @chown_one_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chown_one_xattr(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iattr*
  store %struct.iattr* %9, %struct.iattr** %5, align 8
  %10 = load %struct.iattr*, %struct.iattr** %5, align 8
  %11 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @ATTR_UID, align 4
  %14 = load i32, i32* @ATTR_GID, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.iattr*, %struct.iattr** %5, align 8
  %17 = getelementptr inbounds %struct.iattr, %struct.iattr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load %struct.iattr*, %struct.iattr** %5, align 8
  %22 = call i32 @reiserfs_setattr(%struct.dentry* %20, %struct.iattr* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.iattr*, %struct.iattr** %5, align 8
  %25 = getelementptr inbounds %struct.iattr, %struct.iattr* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @reiserfs_setattr(%struct.dentry*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
