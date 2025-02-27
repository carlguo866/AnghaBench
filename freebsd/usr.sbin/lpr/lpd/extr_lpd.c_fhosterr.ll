; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_lpd.c_fhosterr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_lpd.c_fhosterr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPD_LOGCONNERR = common dso_local global i32 0, align 4
@LPD_ADDFROMLINE = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"for connection from %s:\00", align 1
@from_host = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s [@%s]: %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@local_host = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @fhosterr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fhosterr(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @LPD_LOGCONNERR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @LPD_ADDFROMLINE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @LOG_WARNING, align 4
  %18 = load i8*, i8** @from_host, align 8
  %19 = call i32 @syslog(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32, i32* @LOG_WARNING, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @syslog(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i8*, i8** @progname, align 8
  %26 = load i8*, i8** @local_host, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %25, i8* %26, i8* %27)
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fflush(i32 %29)
  %31 = call i32 @sleep(i32 2)
  %32 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
