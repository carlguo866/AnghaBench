; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_find_name_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_find_name_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"invalid symbol name \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @find_name_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_name_end(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 45
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %16, label %36

16:                                               ; preds = %11, %1
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 91
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 93)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 58)
  store i8* %35, i8** %2, align 8
  br label %39

36:                                               ; preds = %11
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 58)
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
