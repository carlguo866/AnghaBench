; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"test_read_format_7zip_copy.7z\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i32 -1, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @extract_reference_file(i8* %8)
  %10 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %10, %struct.archive** %5, align 8
  %11 = icmp ne %struct.archive* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.archive*, %struct.archive** %5, align 8
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  %16 = load %struct.archive*, %struct.archive** %5, align 8
  %17 = call i32 @archive_read_support_filter_all(%struct.archive* %16)
  %18 = call i32 @assertEqualIntA(%struct.archive* %14, i32 %15, i32 %17)
  %19 = load %struct.archive*, %struct.archive** %5, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %5, align 8
  %22 = call i32 @archive_read_support_format_all(%struct.archive* %21)
  %23 = call i32 @assertEqualIntA(%struct.archive* %19, i32 %20, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = load i32, i32* @O_BINARY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @open(i8* %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.archive*, %struct.archive** %5, align 8
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = load %struct.archive*, %struct.archive** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @archive_read_open_fd(%struct.archive* %34, i32 %35, i32 10240)
  %37 = call i32 @assertEqualIntA(%struct.archive* %32, i32 %33, i32 %36)
  br label %45

38:                                               ; preds = %1
  %39 = load %struct.archive*, %struct.archive** %5, align 8
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  %41 = load %struct.archive*, %struct.archive** %5, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @archive_read_open_filename(%struct.archive* %41, i8* %42, i32 10240)
  %44 = call i32 @assertEqualIntA(%struct.archive* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %26
  %46 = load %struct.archive*, %struct.archive** %5, align 8
  %47 = load i32, i32* @ARCHIVE_OK, align 4
  %48 = load %struct.archive*, %struct.archive** %5, align 8
  %49 = call i32 @archive_read_next_header(%struct.archive* %48, %struct.archive_entry** %4)
  %50 = call i32 @assertEqualIntA(%struct.archive* %46, i32 %47, i32 %49)
  %51 = load i32, i32* @AE_IFREG, align 4
  %52 = or i32 %51, 438
  %53 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %54 = call i32 @archive_entry_mode(%struct.archive_entry* %53)
  %55 = call i32 @assertEqualInt(i32 %52, i32 %54)
  %56 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %57 = call i32 @archive_entry_pathname(%struct.archive_entry* %56)
  %58 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %60 = call i32 @archive_entry_mtime(%struct.archive_entry* %59)
  %61 = call i32 @assertEqualInt(i32 86401, i32 %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %63 = call i32 @archive_entry_size(%struct.archive_entry* %62)
  %64 = call i32 @assertEqualInt(i32 60, i32 %63)
  %65 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %66 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %65)
  %67 = call i32 @assertEqualInt(i32 %66, i32 0)
  %68 = load %struct.archive*, %struct.archive** %5, align 8
  %69 = call i64 @archive_read_has_encrypted_entries(%struct.archive* %68)
  %70 = load i64, i64* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 8
  %71 = icmp sgt i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.archive*, %struct.archive** %5, align 8
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %76 = call i32 @archive_read_data(%struct.archive* %74, i8* %75, i32 128)
  %77 = call i32 @assertEqualInt(i32 60, i32 %76)
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %79 = call i32 @assertEqualMem(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %80 = load %struct.archive*, %struct.archive** %5, align 8
  %81 = call i32 @archive_file_count(%struct.archive* %80)
  %82 = call i32 @assertEqualInt(i32 1, i32 %81)
  %83 = load %struct.archive*, %struct.archive** %5, align 8
  %84 = load i32, i32* @ARCHIVE_EOF, align 4
  %85 = load %struct.archive*, %struct.archive** %5, align 8
  %86 = call i32 @archive_read_next_header(%struct.archive* %85, %struct.archive_entry** %4)
  %87 = call i32 @assertEqualIntA(%struct.archive* %83, i32 %84, i32 %86)
  %88 = load %struct.archive*, %struct.archive** %5, align 8
  %89 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %90 = load %struct.archive*, %struct.archive** %5, align 8
  %91 = call i32 @archive_filter_code(%struct.archive* %90, i32 0)
  %92 = call i32 @assertEqualIntA(%struct.archive* %88, i32 %89, i32 %91)
  %93 = load %struct.archive*, %struct.archive** %5, align 8
  %94 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %95 = load %struct.archive*, %struct.archive** %5, align 8
  %96 = call i32 @archive_format(%struct.archive* %95)
  %97 = call i32 @assertEqualIntA(%struct.archive* %93, i32 %94, i32 %96)
  %98 = load i32, i32* @ARCHIVE_OK, align 4
  %99 = load %struct.archive*, %struct.archive** %5, align 8
  %100 = call i32 @archive_read_close(%struct.archive* %99)
  %101 = call i32 @assertEqualInt(i32 %98, i32 %100)
  %102 = load i32, i32* @ARCHIVE_OK, align 4
  %103 = load %struct.archive*, %struct.archive** %5, align 8
  %104 = call i32 @archive_read_free(%struct.archive* %103)
  %105 = call i32 @assertEqualInt(i32 %102, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %45
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @close(i32 %109)
  br label %111

111:                                              ; preds = %108, %45
  ret void
}

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @archive_read_open_fd(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i64 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
