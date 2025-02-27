; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_port_fops_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_port_fops_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.port* }
%struct.port = type { i32, i32, i32 }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @port_fops_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_fops_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.port*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.port*, %struct.port** %9, align 8
  store %struct.port* %10, %struct.port** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = load %struct.port*, %struct.port** %6, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 2
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @poll_wait(%struct.file* %11, i32* %13, i32* %14)
  %16 = load %struct.port*, %struct.port** %6, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EPOLLHUP, align 4
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %23 = load %struct.port*, %struct.port** %6, align 8
  %24 = call i32 @will_read_block(%struct.port* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EPOLLIN, align 4
  %28 = load i32, i32* @EPOLLRDNORM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.port*, %struct.port** %6, align 8
  %34 = call i32 @will_write_block(%struct.port* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @EPOLLOUT, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.port*, %struct.port** %6, align 8
  %42 = getelementptr inbounds %struct.port, %struct.port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EPOLLHUP, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @will_read_block(%struct.port*) #1

declare dso_local i32 @will_write_block(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
