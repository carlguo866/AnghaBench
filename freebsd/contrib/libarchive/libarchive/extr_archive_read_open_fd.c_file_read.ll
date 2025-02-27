; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_fd.c_file_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_fd.c_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_fd_data = type { i8*, i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Error reading fd %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i8**)* @file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_read(%struct.archive* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.read_fd_data*, align 8
  %8 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.read_fd_data*
  store %struct.read_fd_data* %10, %struct.read_fd_data** %7, align 8
  %11 = load %struct.read_fd_data*, %struct.read_fd_data** %7, align 8
  %12 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** %6, align 8
  store i8* %13, i8** %14, align 8
  br label %15

15:                                               ; preds = %32, %3
  %16 = load %struct.read_fd_data*, %struct.read_fd_data** %7, align 8
  %17 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.read_fd_data*, %struct.read_fd_data** %7, align 8
  %20 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.read_fd_data*, %struct.read_fd_data** %7, align 8
  %23 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @read(i32 %18, i8* %21, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %15
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINTR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %15

33:                                               ; preds = %28
  %34 = load %struct.archive*, %struct.archive** %4, align 8
  %35 = load i64, i64* @errno, align 8
  %36 = load %struct.read_fd_data*, %struct.read_fd_data** %7, align 8
  %37 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @archive_set_error(%struct.archive* %34, i64 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %15
  %41 = load i64, i64* %8, align 8
  ret i64 %41
}

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
