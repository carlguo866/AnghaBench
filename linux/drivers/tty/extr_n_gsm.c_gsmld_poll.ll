; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.gsm_mux* }
%struct.gsm_mux = type { i64 }
%struct.file = type { i32 }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32*)* @gsmld_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsmld_poll(%struct.tty_struct* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsm_mux*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 2
  %11 = load %struct.gsm_mux*, %struct.gsm_mux** %10, align 8
  store %struct.gsm_mux* %11, %struct.gsm_mux** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 1
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @poll_wait(%struct.file* %12, i32* %14, i32* %15)
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 0
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @poll_wait(%struct.file* %17, i32* %19, i32* %20)
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = call i64 @tty_hung_up_p(%struct.file* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @EPOLLHUP, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = call i32 @tty_is_writelocked(%struct.tty_struct* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %35 = call i64 @tty_write_room(%struct.tty_struct* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @EPOLLOUT, align 4
  %39 = load i32, i32* @EPOLLWRNORM, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %33, %29
  %44 = load %struct.gsm_mux*, %struct.gsm_mux** %8, align 8
  %45 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @EPOLLHUP, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @tty_is_writelocked(%struct.tty_struct*) #1

declare dso_local i64 @tty_write_room(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
