; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_clearstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_clearstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"incorrect number of arguments.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid port id \22%s\22\00", align 1
@CHELSIO_T4_CLEAR_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @clearstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clearstats(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @str_to_number(i8* %17, i64* %7, i32* null)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %14
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* @CHELSIO_T4_CLEAR_STATS, align 4
  %31 = call i32 @doit(i32 %30, i64* %8)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %22, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i8* @str_to_number(i8*, i64*, i32*) #1

declare dso_local i32 @doit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
