; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_read_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i8**, i8*, i32*)* @read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_time(i64* %0, i8** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i64* %0, i64** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @read_val(i8** %9, i8** %10, i8* %11)
  %13 = call i32 @SVN_ERR(i32 %12)
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i64*, i64** %5, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @svn_time_from_cstring(i64* %17, i8* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  br label %24

22:                                               ; preds = %4
  %23 = load i64*, i64** %5, align 8
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %25
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_val(i8**, i8**, i8*) #1

declare dso_local i32 @svn_time_from_cstring(i64*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
