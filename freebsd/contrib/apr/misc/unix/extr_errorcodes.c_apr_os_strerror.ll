; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/misc/unix/extr_errorcodes.c_apr_os_strerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/misc/unix/extr_errorcodes.c_apr_os_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Unknown host\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"No address for host\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unrecognized resolver error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @apr_os_strerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @apr_os_strerror(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %11 [
    i32 130, label %9
    i32 128, label %10
    i32 129, label %10
  ]

9:                                                ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %12

10:                                               ; preds = %3, %3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %12

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %12

12:                                               ; preds = %11, %10, %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @stuffbuffer(i8* %13, i32 %14, i8* %15)
  ret i8* %16
}

declare dso_local i8* @stuffbuffer(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
