; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_propget-cmd.c_stream_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_propget-cmd.c_stream_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_STREAM_UNEXPECTED_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error writing to stream\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64)* @stream_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stream_write(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @svn_stream_write(i32* %10, i8* %11, i64* %8)
  %13 = call i32 @SVN_ERR(i32 %12)
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @SVN_ERR_STREAM_UNEXPECTED_EOF, align 4
  %19 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = call i32* @svn_error_create(i32 %18, i32* null, i32 %19)
  store i32* %20, i32** %4, align 8
  br label %23

21:                                               ; preds = %3
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %4, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32*, i32** %4, align 8
  ret i32* %24
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_write(i32*, i8*, i64*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
