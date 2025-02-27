; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_symlink.c_nfs_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_symlink.c_nfs_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.nameidata = type { i32 }
%struct.page = type opaque

@nfs_symlink_filler = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.nameidata*)* @nfs_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nfs_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nfs_revalidate_mapping(%struct.inode* %12, i32 %15)
  %17 = call i8* @ERR_PTR(i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i64, i64* @nfs_symlink_filler, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i8* @read_cache_page(i32* %23, i32 0, i32* %25, %struct.inode* %26)
  %28 = bitcast i8* %27 to %struct.page*
  store %struct.page* %28, %struct.page** %7, align 8
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = bitcast %struct.page* %29 to i8*
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = bitcast %struct.page* %34 to i8*
  store i8* %35, i8** %8, align 8
  br label %44

36:                                               ; preds = %21
  %37 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %38 = load %struct.page*, %struct.page** %7, align 8
  %39 = bitcast %struct.page* %38 to i8*
  %40 = call i8* @kmap(i8* %39)
  %41 = call i32 @nd_set_link(%struct.nameidata* %37, i8* %40)
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = bitcast %struct.page* %42 to i8*
  store i8* %43, i8** %3, align 8
  br label %48

44:                                               ; preds = %33, %20
  %45 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @nd_set_link(%struct.nameidata* %45, i8* %46)
  store i8* null, i8** %3, align 8
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i8*, i8** %3, align 8
  ret i8* %49
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @nfs_revalidate_mapping(%struct.inode*, i32) #1

declare dso_local i8* @read_cache_page(i32*, i32, i32*, %struct.inode*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @nd_set_link(%struct.nameidata*, i8*) #1

declare dso_local i8* @kmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
