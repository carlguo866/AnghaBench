; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_zisofs_write_to_temp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_zisofs_write_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Programming error\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i64)* @zisofs_write_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zisofs_write_to_temp(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %10 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %9, i32 0, i32 0
  %11 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %12 = call i32 @archive_set_error(i32* %10, i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ARCHIVE_FATAL, align 4
  ret i32 %13
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
