; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_pattern_mbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_pattern_mbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.match_list = type { i32 }
%struct.match = type { i32 }

@PATTERN_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.match_list*, i8*)* @add_pattern_mbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pattern_mbs(%struct.archive_match* %0, %struct.match_list* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_match*, align 8
  %6 = alloca %struct.match_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.match*, align 8
  %9 = alloca i64, align 8
  store %struct.archive_match* %0, %struct.archive_match** %5, align 8
  store %struct.match_list* %1, %struct.match_list** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call %struct.match* @calloc(i32 1, i32 4)
  store %struct.match* %10, %struct.match** %8, align 8
  %11 = load %struct.match*, %struct.match** %8, align 8
  %12 = icmp eq %struct.match* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %15 = call i32 @error_nomem(%struct.archive_match* %14)
  store i32 %15, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 47
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %29, %21, %16
  %33 = load %struct.match*, %struct.match** %8, align 8
  %34 = getelementptr inbounds %struct.match, %struct.match* %33, i32 0, i32 0
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @archive_mstring_copy_mbs_len(i32* %34, i8* %35, i64 %36)
  %38 = load %struct.match_list*, %struct.match_list** %6, align 8
  %39 = load %struct.match*, %struct.match** %8, align 8
  %40 = call i32 @match_list_add(%struct.match_list* %38, %struct.match* %39)
  %41 = load i32, i32* @PATTERN_IS_SET, align 4
  %42 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %43 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %32, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.match* @calloc(i32, i32) #1

declare dso_local i32 @error_nomem(%struct.archive_match*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @archive_mstring_copy_mbs_len(i32*, i8*, i64) #1

declare dso_local i32 @match_list_add(%struct.match_list*, %struct.match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
