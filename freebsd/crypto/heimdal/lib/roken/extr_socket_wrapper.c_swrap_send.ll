; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32 }

@SWRAP_SEND = common dso_local global i32 0, align 4
@SWRAP_SEND_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_send(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.socket_info*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.socket_info* @find_socket_info(i32 %12)
  store %struct.socket_info* %13, %struct.socket_info** %11, align 8
  %14 = load %struct.socket_info*, %struct.socket_info** %11, align 8
  %15 = icmp ne %struct.socket_info* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @real_send(i32 %17, i8* %18, i64 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @real_send(i32 %23, i8* %24, i64 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.socket_info*, %struct.socket_info** %11, align 8
  %32 = load i32, i32* @SWRAP_SEND, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @swrap_dump_packet(%struct.socket_info* %31, i32* null, i32 %32, i8* %33, i32 %35)
  %37 = load %struct.socket_info*, %struct.socket_info** %11, align 8
  %38 = load i32, i32* @SWRAP_SEND_RST, align 4
  %39 = call i32 @swrap_dump_packet(%struct.socket_info* %37, i32* null, i32 %38, i8* null, i32 0)
  br label %46

40:                                               ; preds = %22
  %41 = load %struct.socket_info*, %struct.socket_info** %11, align 8
  %42 = load i32, i32* @SWRAP_SEND, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @swrap_dump_packet(%struct.socket_info* %41, i32* null, i32 %42, i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %30
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %16
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_send(i32, i8*, i64, i32) #1

declare dso_local i32 @swrap_dump_packet(%struct.socket_info*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
