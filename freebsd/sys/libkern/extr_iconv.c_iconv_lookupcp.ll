; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_lookupcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_lookupcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"warning a NULL list passed\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iconv_lookupcp(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = icmp eq i8** %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = call i32 @ICDEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @ENOENT, align 4
  store i32 %10, i32* %3, align 4
  br label %29

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strcmp(i8* %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %4, align 8
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %22, %8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ICDEBUG(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
