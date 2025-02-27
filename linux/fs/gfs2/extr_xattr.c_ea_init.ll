; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_ea_request = type { i32, i8*, i64, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@ea_init_i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32, i8*, i8*, i64)* @ea_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_init(%struct.gfs2_inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.gfs2_ea_request, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 0
  %16 = call %struct.TYPE_2__* @GFS2_SB(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %11, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %11, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %11, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %11, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  %30 = call i32 @GFS2_EAREQ_SIZE_STUFFED(%struct.gfs2_ea_request* %11)
  %31 = load i32, i32* %12, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %11, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @DIV_ROUND_UP(i64 %35, i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %33, %5
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @ea_init_i, align 4
  %46 = call i32 @ea_alloc_skeleton(%struct.gfs2_inode* %43, %struct.gfs2_ea_request* %11, i32 %44, i32 %45, i32* null)
  ret i32 %46
}

declare dso_local %struct.TYPE_2__* @GFS2_SB(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @GFS2_EAREQ_SIZE_STUFFED(%struct.gfs2_ea_request*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @ea_alloc_skeleton(%struct.gfs2_inode*, %struct.gfs2_ea_request*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
