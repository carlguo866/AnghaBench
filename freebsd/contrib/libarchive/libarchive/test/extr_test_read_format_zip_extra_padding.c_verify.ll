; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_extra_padding.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_extra_padding.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %4 = load %struct.archive*, %struct.archive** %2, align 8
  %5 = load i32, i32* @ARCHIVE_OK, align 4
  %6 = load %struct.archive*, %struct.archive** %2, align 8
  %7 = call i32 @archive_read_next_header(%struct.archive* %6, %struct.archive_entry** %3)
  %8 = call i32 @assertEqualIntA(%struct.archive* %4, i32 %5, i32 %7)
  %9 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %10 = call i32 @archive_entry_pathname(%struct.archive_entry* %9)
  %11 = call i32 @assertEqualString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @AE_IFREG, align 4
  %13 = or i32 %12, 436
  %14 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %15 = call i32 @archive_entry_mode(%struct.archive_entry* %14)
  %16 = call i32 @assertEqualInt(i32 %13, i32 %15)
  %17 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %18 = call i32 @archive_entry_mtime(%struct.archive_entry* %17)
  %19 = call i32 @assertEqualInt(i32 1544902866, i32 %18)
  %20 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %21 = call i32 @archive_entry_ctime(%struct.archive_entry* %20)
  %22 = call i32 @assertEqualInt(i32 0, i32 %21)
  %23 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %24 = call i32 @archive_entry_atime(%struct.archive_entry* %23)
  %25 = call i32 @assertEqualInt(i32 1544902875, i32 %24)
  %26 = load %struct.archive*, %struct.archive** %2, align 8
  %27 = load i32, i32* @ARCHIVE_EOF, align 4
  %28 = load %struct.archive*, %struct.archive** %2, align 8
  %29 = call i32 @archive_read_next_header(%struct.archive* %28, %struct.archive_entry** %3)
  %30 = call i32 @assertEqualIntA(%struct.archive* %26, i32 %27, i32 %29)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
