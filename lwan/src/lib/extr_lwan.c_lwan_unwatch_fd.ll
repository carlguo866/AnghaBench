; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_unwatch_fd.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_unwatch_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { i64, i32 }
%struct.lwan_fd_watch = type { i64, i32 }

@EPOLL_CTL_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not unwatch fd %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_unwatch_fd(%struct.lwan* %0, %struct.lwan_fd_watch* %1) #0 {
  %3 = alloca %struct.lwan*, align 8
  %4 = alloca %struct.lwan_fd_watch*, align 8
  store %struct.lwan* %0, %struct.lwan** %3, align 8
  store %struct.lwan_fd_watch* %1, %struct.lwan_fd_watch** %4, align 8
  %5 = load %struct.lwan*, %struct.lwan** %3, align 8
  %6 = getelementptr inbounds %struct.lwan, %struct.lwan* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %4, align 8
  %9 = getelementptr inbounds %struct.lwan_fd_watch, %struct.lwan_fd_watch* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.lwan*, %struct.lwan** %3, align 8
  %14 = getelementptr inbounds %struct.lwan, %struct.lwan* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @EPOLL_CTL_DEL, align 4
  %17 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %4, align 8
  %18 = getelementptr inbounds %struct.lwan_fd_watch, %struct.lwan_fd_watch* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @epoll_ctl(i32 %15, i32 %16, i64 %19, i32* null)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %4, align 8
  %24 = getelementptr inbounds %struct.lwan_fd_watch, %struct.lwan_fd_watch* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @lwan_status_perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %22, %12
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %4, align 8
  %30 = getelementptr inbounds %struct.lwan_fd_watch, %struct.lwan_fd_watch* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @coro_free(i32 %31)
  %33 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %4, align 8
  %34 = call i32 @free(%struct.lwan_fd_watch* %33)
  ret void
}

declare dso_local i64 @epoll_ctl(i32, i32, i64, i32*) #1

declare dso_local i32 @lwan_status_perror(i8*, i64) #1

declare dso_local i32 @coro_free(i32) #1

declare dso_local i32 @free(%struct.lwan_fd_watch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
