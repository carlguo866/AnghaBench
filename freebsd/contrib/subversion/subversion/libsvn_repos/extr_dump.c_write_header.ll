; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32*)* @write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_header(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @svn_hash_gets(i32* %10, i8* %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @svn_stream_printf(i32* %16, i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  br label %22

22:                                               ; preds = %15, %4
  %23 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %23
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_printf(i32*, i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
