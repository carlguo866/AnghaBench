; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_data_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_data_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.archive_read*)* }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"archive_read_data_skip\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_data_skip(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %2, align 8
  %8 = load %struct.archive*, %struct.archive** %2, align 8
  %9 = bitcast %struct.archive* %8 to %struct.archive_read*
  store %struct.archive_read* %9, %struct.archive_read** %3, align 8
  %10 = load %struct.archive*, %struct.archive** %2, align 8
  %11 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %13 = call i32 @archive_check_magic(%struct.archive* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.archive_read*)*, i32 (%struct.archive_read*)** %17, align 8
  %19 = icmp ne i32 (%struct.archive_read*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.archive_read*)*, i32 (%struct.archive_read*)** %24, align 8
  %26 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %27 = call i32 %25(%struct.archive_read* %26)
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %35, %28
  %30 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %31 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %30, i32 0, i32 0
  %32 = call i32 @archive_read_data_block(%struct.TYPE_4__* %31, i8** %5, i64* %6, i32* %7)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %29

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ARCHIVE_EOF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %45 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %46 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_read_data_block(%struct.TYPE_4__*, i8**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
