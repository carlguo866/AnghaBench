; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_replaceext.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_replaceext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STB_PATH = common dso_local global i32 0, align 4
@STB_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stb_replaceext(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4096 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @STB_PATH, align 4
  %11 = load i32, i32* @STB_FILE, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @stb_splitpath(i8* %8, i8* %9, i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  br label %29

27:                                               ; preds = %16
  %28 = load i8*, i8** %6, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i8* [ %26, %24 ], [ %28, %27 ]
  %31 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %30)
  br label %36

32:                                               ; preds = %3
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %35 = call i32 @strcpy(i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i8*, i8** %4, align 8
  ret i8* %37
}

declare dso_local i32 @stb_splitpath(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
