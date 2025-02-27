; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_parse_auth_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_parse_auth_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@AUTH_FTP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@AUTH_PLAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"bad value for -a: `%s'\00", align 1
@AUTH_OTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_auth_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_auth_level(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strtok_r(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5)
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %53, %1
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %52

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @AUTH_FTP, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %51

28:                                               ; preds = %20
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @AUTH_PLAIN, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %50

36:                                               ; preds = %28
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @AUTH_PLAIN, align 4
  %42 = load i32, i32* @AUTH_FTP, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %49, %32
  br label %51

51:                                               ; preds = %50, %24
  br label %52

52:                                               ; preds = %51, %15
  br label %53

53:                                               ; preds = %52
  %54 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5)
  store i8* %54, i8** %3, align 8
  br label %8

55:                                               ; preds = %8
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
