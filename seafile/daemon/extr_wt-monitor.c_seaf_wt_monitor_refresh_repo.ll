; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor.c_seaf_wt_monitor_refresh_repo.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor.c_seaf_wt_monitor_refresh_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@CMD_REFRESH_WATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[wt mon] fail to write command pipe.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"send a refresh command, repo %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"[wt mon] fail to read result pipe.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_wt_monitor_refresh_repo(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = call i32 @memset(%struct.TYPE_6__* %6, i32 0, i32 8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @memcpy(i32 %11, i8* %12, i32 37)
  %14 = load i32, i32* @CMD_REFRESH_WATCH, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @seaf_pipe_writen(i32 %20, %struct.TYPE_6__* %6, i32 8)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %43

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @seaf_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @seaf_pipe_readn(i32 %34, i32* %7, i32 4)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %39, %25
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @seaf_pipe_writen(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @seaf_debug(i8*, i8*) #1

declare dso_local i32 @seaf_pipe_readn(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
