; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_color.c_parse_attr_color.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_color.c_parse_attr_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"attempted to parse color attr: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @parse_attr_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_attr_color(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @xstrdup(i8* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 32)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @LOG_DEBUG(i8* %21)
  br label %43

23:                                               ; preds = %15
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %23, %39
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @strpbrk(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32*, i32** %3, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @locate_attr_color(i32* %33, i8* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %42

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %7, align 8
  br label %26

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @LOG_DEBUG(i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @locate_attr_color(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
