; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntpd.c_library_fatal_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntpd.c_library_fatal_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s:%d: fatal error:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"exiting (due to fatal error in library)\00", align 1
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @library_fatal_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @library_fatal_error(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 @isc_error_setfatal(i32* null)
  %11 = load i32, i32* @LOG_ERR, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (i32, i8*, ...) @msyslog(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @vsnprintf(i8* %15, i32 256, i8* %16, i32 %17)
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %21 = call i32 (i32, i8*, ...) @msyslog(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = call i32 (i32, i8*, ...) @msyslog(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @isc_error_setfatal(i32*) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
