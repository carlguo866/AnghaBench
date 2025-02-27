; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_mmap_violation_check.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_mmap_violation_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.inode = type { i32 }

@MMAP_CHECK = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mmap_file\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"mmapped_writers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i8**, i8**, i8*)* @mmap_violation_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_violation_check(i32 %0, %struct.file* %1, i8** %2, i8** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.file* %1, %struct.file** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MMAP_CHECK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %5
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @mapping_writably_mapped(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load i32, i32* @ETXTBSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %12, align 4
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = call %struct.inode* @file_inode(%struct.file* %25)
  store %struct.inode* %26, %struct.inode** %11, align 8
  %27 = load i8**, i8*** %8, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i8**, i8*** %8, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i8* @ima_d_path(i32* %32, i8** %33, i8* %34)
  %36 = load i8**, i8*** %9, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %30, %22
  %38 = load i32, i32* @AUDIT_INTEGRITY_DATA, align 4
  %39 = load %struct.inode*, %struct.inode** %11, align 8
  %40 = load i8**, i8*** %9, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @integrity_audit_msg(i32 %38, %struct.inode* %39, i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 0)
  br label %44

44:                                               ; preds = %37, %16, %5
  %45 = load i32, i32* %12, align 4
  ret i32 %45
}

declare dso_local i64 @mapping_writably_mapped(i32) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i8* @ima_d_path(i32*, i8**, i8*) #1

declare dso_local i32 @integrity_audit_msg(i32, %struct.inode*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
