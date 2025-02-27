; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_ramdisk.c_setup_ram_volume.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_ramdisk.c_setup_ram_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [82 x i8] c"diskutil erasevolume HFS+ '%s' `hdiutil attach -nomount ram://1500000` >/dev/null\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"asprintf failed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"diskutil command failed\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"/Volumes/%s\00", align 1
@PERFINDEX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_ram_volume(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @asprintf(i8** %5, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @system(i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i32, i32* @PERFINDEX_SUCCESS, align 4
  ret i32 %25
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @VERIFY(i32, i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
