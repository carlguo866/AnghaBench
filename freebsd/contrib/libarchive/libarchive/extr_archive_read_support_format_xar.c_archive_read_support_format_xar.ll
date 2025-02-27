; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_xar.c_archive_read_support_format_xar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_xar.c_archive_read_support_format_xar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"archive_read_support_format_xar\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Xar not supported on this platform\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_support_format_xar(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_read*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %4 = load %struct.archive*, %struct.archive** %2, align 8
  %5 = bitcast %struct.archive* %4 to %struct.archive_read*
  store %struct.archive_read* %5, %struct.archive_read** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %2, align 8
  %7 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %8 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %9 = call i32 @archive_check_magic(%struct.archive* %6, i32 %7, i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 0
  %12 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %13 = call i32 @archive_set_error(i32* %11, i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @ARCHIVE_WARN, align 4
  ret i32 %14
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
