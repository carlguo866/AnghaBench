; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_gd_csum_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_gd_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_ext2fs = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cdev = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"WARNING: mount of %s denied due bad gd=%d csum=0x%x, expected=0x%x - run fsck\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_gd_csum_verify(%struct.m_ext2fs* %0, %struct.cdev* %1) #0 {
  %3 = alloca %struct.m_ext2fs*, align 8
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.m_ext2fs* %0, %struct.m_ext2fs** %3, align 8
  store %struct.cdev* %1, %struct.cdev** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %57, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.m_ext2fs*, %struct.m_ext2fs** %3, align 8
  %10 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %7
  %14 = load %struct.m_ext2fs*, %struct.m_ext2fs** %3, align 8
  %15 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.m_ext2fs*, %struct.m_ext2fs** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.m_ext2fs*, %struct.m_ext2fs** %3, align 8
  %25 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = call i32 @ext2_gd_csum(%struct.m_ext2fs* %22, i32 %23, %struct.TYPE_2__* %29)
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %21, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %13
  %34 = load %struct.cdev*, %struct.cdev** %4, align 8
  %35 = call i8* @devtoname(%struct.cdev* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.m_ext2fs*, %struct.m_ext2fs** %3, align 8
  %38 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.m_ext2fs*, %struct.m_ext2fs** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.m_ext2fs*, %struct.m_ext2fs** %3, align 8
  %48 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = call i32 @ext2_gd_csum(%struct.m_ext2fs* %45, i32 %46, %struct.TYPE_2__* %52)
  %54 = call i32 @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36, i64 %44, i32 %53)
  %55 = load i32, i32* @EIO, align 4
  store i32 %55, i32* %6, align 4
  br label %60

56:                                               ; preds = %13
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %7

60:                                               ; preds = %33, %7
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @ext2_gd_csum(%struct.m_ext2fs*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i64, i32) #1

declare dso_local i8* @devtoname(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
