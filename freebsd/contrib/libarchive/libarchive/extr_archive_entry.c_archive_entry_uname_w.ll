; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_uname_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_uname_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @archive_entry_uname_w(%struct.archive_entry* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i32*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  %5 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %6 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %9 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %8, i32 0, i32 0
  %10 = call i64 @archive_mstring_get_wcs(i32 %7, i32* %9, i32** %4)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %2, align 8
  br label %21

14:                                               ; preds = %1
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOMEM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  store i32* null, i32** %2, align 8
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i32*, i32** %2, align 8
  ret i32* %22
}

declare dso_local i64 @archive_mstring_get_wcs(i32, i32*, i32**) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
