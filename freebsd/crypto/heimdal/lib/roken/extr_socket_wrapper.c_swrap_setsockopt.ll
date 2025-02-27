; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_setsockopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_setsockopt(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket_info*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.socket_info* @find_socket_info(i32 %13)
  store %struct.socket_info* %14, %struct.socket_info** %12, align 8
  %15 = load %struct.socket_info*, %struct.socket_info** %12, align 8
  %16 = icmp ne %struct.socket_info* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @real_setsockopt(i32 %18, i32 %19, i32 %20, i8* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %42

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SOL_SOCKET, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @real_setsockopt(i32 %29, i32 %30, i32 %31, i8* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %42

35:                                               ; preds = %24
  %36 = load %struct.socket_info*, %struct.socket_info** %12, align 8
  %37 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %40 [
    i32 128, label %39
  ]

39:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %39, %28, %17
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_setsockopt(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
