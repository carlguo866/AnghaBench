; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_dump.c_get_num_images.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_dump.c_get_num_images.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Could not open Folder %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_num_images to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_num_images(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @opendir(i8* %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 0, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %33, %32, %15
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.dirent* @readdir(i32* %17)
  store %struct.dirent* %18, %struct.dirent** %5, align 8
  %19 = icmp ne %struct.dirent* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.dirent*, %struct.dirent** %5, align 8
  %22 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.dirent*, %struct.dirent** %5, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  br label %16

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @closedir(i32* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
