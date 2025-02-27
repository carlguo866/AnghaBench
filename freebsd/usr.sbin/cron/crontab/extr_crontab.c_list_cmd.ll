; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cron/crontab/extr_crontab.c_list_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cron/crontab/extr_crontab.c_list_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_FNAME = common dso_local global i32 0, align 4
@RealUser = common dso_local global i32 0, align 4
@Pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@User = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR_EXIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"no crontab for %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_cmd() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @MAX_FNAME, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i32, i32* @RealUser, align 4
  %9 = load i32, i32* @Pid, align 4
  %10 = load i32, i32* @User, align 4
  %11 = call i32 @log_it(i32 %8, i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = trunc i64 %5 to i32
  %13 = load i32, i32* @User, align 4
  %14 = call i8* @CRON_TAB(i32 %13)
  %15 = call i32 @snprintf(i8* %7, i32 %12, i8* %14)
  %16 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %0
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @ERROR_EXIT, align 4
  %24 = load i32, i32* @User, align 4
  %25 = call i32 @errx(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @ERROR_EXIT, align 4
  %28 = call i32 @err(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %7)
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29, %0
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 @copy_file(i32* %31, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %36)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_it(i32, i32, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @CRON_TAB(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @copy_file(i32*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
