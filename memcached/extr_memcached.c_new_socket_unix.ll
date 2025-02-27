; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_new_socket_unix.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_new_socket_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"setting O_NONBLOCK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @new_socket_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_socket_unix() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @AF_UNIX, align 4
  %5 = load i32, i32* @SOCK_STREAM, align 4
  %6 = call i32 @socket(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %2, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %29

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @F_GETFL, align 4
  %13 = call i32 @fcntl(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @F_SETFL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @O_NONBLOCK, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @fcntl(i32 %16, i32 %17, i32 %20)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15, %10
  %24 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @close(i32 %25)
  store i32 -1, i32* %1, align 4
  br label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %27, %23, %8
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
