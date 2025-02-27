; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_archive_write_set_bytes_per_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_archive_write_set_bytes_per_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i32, i32 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"archive_write_set_bytes_per_block\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_bytes_per_block(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %5, align 8
  %8 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %9 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %8, i32 0, i32 1
  %10 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %11 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %12 = call i32 @archive_check_magic(i32* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %15 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %16
}

declare dso_local i32 @archive_check_magic(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
