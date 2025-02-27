; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_sendpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.socket* }
%struct.socket = type { i32 }
%struct.page = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_sendpage(%struct.file* %0, %struct.page* %1, i32 %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.socket*, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load %struct.socket*, %struct.socket** %16, align 8
  store %struct.socket* %17, %struct.socket** %13, align 8
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @O_NONBLOCK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  br label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @MSG_DONTWAIT, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 0, %24 ], [ %26, %25 ]
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @MSG_MORE, align 4
  %33 = load i32, i32* %14, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.socket*, %struct.socket** %13, align 8
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @kernel_sendpage(%struct.socket* %36, %struct.page* %37, i32 %38, i64 %39, i32 %40)
  ret i32 %41
}

declare dso_local i32 @kernel_sendpage(%struct.socket*, %struct.page*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
