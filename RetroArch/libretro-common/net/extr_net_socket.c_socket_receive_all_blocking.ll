; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_receive_all_blocking.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_receive_all_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_receive_all_blocking(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  br label %12

12:                                               ; preds = %24, %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @recv(i32 %16, i8* %18, i64 %19, i32 0)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %32

24:                                               ; preds = %15
  %25 = load i64, i64* %9, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 %25
  store i32* %27, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %7, align 8
  br label %12

31:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @recv(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
