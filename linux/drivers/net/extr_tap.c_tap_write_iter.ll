; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.tap_queue* }
%struct.tap_queue = type { i32 }
%struct.iov_iter = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @tap_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tap_queue*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %7 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %8 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %7, i32 0, i32 0
  %9 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %9, %struct.file** %5, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.tap_queue*, %struct.tap_queue** %11, align 8
  store %struct.tap_queue* %12, %struct.tap_queue** %6, align 8
  %13 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %14 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @O_NONBLOCK, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @tap_get_user(%struct.tap_queue* %13, i32* null, %struct.iov_iter* %14, i32 %19)
  ret i32 %20
}

declare dso_local i32 @tap_get_user(%struct.tap_queue*, i32*, %struct.iov_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
