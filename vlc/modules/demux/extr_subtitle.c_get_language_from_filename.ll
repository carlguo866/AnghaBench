; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_get_language_from_filename.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_get_language_from_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_language_from_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_language_from_filename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %36

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 46)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 46)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  %28 = call i8* @strdup(i8* %27)
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 46, i8* %31, align 1
  br label %32

32:                                               ; preds = %29, %11
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %2, align 8
  br label %36

36:                                               ; preds = %32, %10
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
