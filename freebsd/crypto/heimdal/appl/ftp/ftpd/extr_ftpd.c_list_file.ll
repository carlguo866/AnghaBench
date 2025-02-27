; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_list_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_list_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_builtin_ls = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Transfer complete.\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Requested action aborted. Local error in processing.\00", align 1
@data = common dso_local global i32 0, align 4
@pdata = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"/bin/ls -la %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @use_builtin_ls, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @dataconn(i8* %8, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %32

13:                                               ; preds = %7
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @fileno(i32* %14)
  %16 = call i32 @set_buffer_size(i32 %15, i32 0)
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @builtin_ls(i32* %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @reply(i32 226, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %25

23:                                               ; preds = %13
  %24 = call i32 @reply(i32 451, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @fclose(i32* %26)
  store i32 -1, i32* @data, align 4
  store i32 -1, i32* @pdata, align 4
  br label %32

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @retrieve(i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %12, %28, %25
  ret void
}

declare dso_local i32* @dataconn(i8*, i32, i8*) #1

declare dso_local i32 @set_buffer_size(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @builtin_ls(i32*, i8*) #1

declare dso_local i32 @reply(i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @retrieve(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
