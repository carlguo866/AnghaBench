; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx4/extr_inode.c_qnx4_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx4/extr_inode.c_qnx4_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kstatfs = type { i32, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8** }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@QNX4_NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @qnx4_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx4_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @huge_encode_dev(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %20 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %25 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = call %struct.TYPE_8__* @qnx4_sb(%struct.super_block* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = mul nsw i32 %32, 8
  %34 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %35 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = call i32 @qnx4_count_free_blocks(%struct.super_block* %36)
  %38 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %39 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %41 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @QNX4_NAME_MAX, align 4
  %46 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %47 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %52 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  store i8* %50, i8** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 32
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %61 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  store i8* %59, i8** %64, align 8
  ret i32 0
}

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_8__* @qnx4_sb(%struct.super_block*) #1

declare dso_local i32 @qnx4_count_free_blocks(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
