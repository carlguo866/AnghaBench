; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_playlist_get_db_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_playlist_get_db_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@FILE_PATH_CONTENT_FAVORITES = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_IMAGE_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_MUSIC_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_VIDEO_HISTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_get_db_name(%struct.TYPE_5__* %0, i64 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %76

11:                                               ; preds = %3
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %76

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @string_is_empty(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %6, align 8
  store i8* %31, i8** %32, align 8
  br label %75

33:                                               ; preds = %14
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @path_basename(i32 %36)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @string_is_empty(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %74, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @FILE_PATH_CONTENT_FAVORITES, align 4
  %44 = call i32 @file_path_str(i32 %43)
  %45 = call i32 @string_is_equal(i8* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %74, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @FILE_PATH_CONTENT_HISTORY, align 4
  %50 = call i32 @file_path_str(i32 %49)
  %51 = call i32 @string_is_equal(i8* %48, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @FILE_PATH_CONTENT_IMAGE_HISTORY, align 4
  %56 = call i32 @file_path_str(i32 %55)
  %57 = call i32 @string_is_equal(i8* %54, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @FILE_PATH_CONTENT_MUSIC_HISTORY, align 4
  %62 = call i32 @file_path_str(i32 %61)
  %63 = call i32 @string_is_equal(i8* %60, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* @FILE_PATH_CONTENT_VIDEO_HISTORY, align 4
  %68 = call i32 @file_path_str(i32 %67)
  %69 = call i32 @string_is_equal(i8* %66, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i8*, i8** %7, align 8
  %73 = load i8**, i8*** %6, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %71, %65, %59, %53, %47, %41, %33
  br label %75

75:                                               ; preds = %74, %24
  br label %76

76:                                               ; preds = %10, %75, %11
  ret void
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @path_basename(i32) #1

declare dso_local i32 @string_is_equal(i8*, i32) #1

declare dso_local i32 @file_path_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
