; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ac_be\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@WME_AC_BE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ac_bk\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"bk\00", align 1
@WME_AC_BK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"ac_vi\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@WME_AC_VI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"ac_vo\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"vo\00", align 1
@WME_AC_VO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"unknown wme access class %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getac(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcasecmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strcasecmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @WME_AC_BE, align 4
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strcasecmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @WME_AC_BK, align 4
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcasecmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @WME_AC_VI, align 4
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strcasecmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @WME_AC_VO, align 4
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %41, %31, %21, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
