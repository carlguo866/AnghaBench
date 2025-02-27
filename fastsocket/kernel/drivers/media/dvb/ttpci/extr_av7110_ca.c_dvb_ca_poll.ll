; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ca.c_dvb_ca_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ca.c_dvb_ca_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { %struct.av7110* }
%struct.av7110 = type { %struct.dvb_ringbuffer, %struct.dvb_ringbuffer }
%struct.dvb_ringbuffer = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"av7110:%p\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dvb_ca_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_ca_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dvb_device*, align 8
  %6 = alloca %struct.av7110*, align 8
  %7 = alloca %struct.dvb_ringbuffer*, align 8
  %8 = alloca %struct.dvb_ringbuffer*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.dvb_device*, %struct.dvb_device** %11, align 8
  store %struct.dvb_device* %12, %struct.dvb_device** %5, align 8
  %13 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %13, i32 0, i32 0
  %15 = load %struct.av7110*, %struct.av7110** %14, align 8
  store %struct.av7110* %15, %struct.av7110** %6, align 8
  %16 = load %struct.av7110*, %struct.av7110** %6, align 8
  %17 = getelementptr inbounds %struct.av7110, %struct.av7110* %16, i32 0, i32 1
  store %struct.dvb_ringbuffer* %17, %struct.dvb_ringbuffer** %7, align 8
  %18 = load %struct.av7110*, %struct.av7110** %6, align 8
  %19 = getelementptr inbounds %struct.av7110, %struct.av7110* %18, i32 0, i32 0
  store %struct.dvb_ringbuffer* %19, %struct.dvb_ringbuffer** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.av7110*, %struct.av7110** %6, align 8
  %21 = call i32 @dprintk(i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.av7110* %20)
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %7, align 8
  %24 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %23, i32 0, i32 0
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @poll_wait(%struct.file* %22, i32* %24, i32* %25)
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %8, align 8
  %29 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %28, i32 0, i32 0
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @poll_wait(%struct.file* %27, i32* %29, i32* %30)
  %32 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %7, align 8
  %33 = call i32 @dvb_ringbuffer_empty(%struct.dvb_ringbuffer* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @POLLIN, align 4
  %37 = load i32, i32* @POLLRDNORM, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %35, %2
  %42 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %8, align 8
  %43 = call i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %42)
  %44 = icmp sgt i32 %43, 1024
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @POLLOUT, align 4
  %47 = load i32, i32* @POLLWRNORM, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @dvb_ringbuffer_empty(%struct.dvb_ringbuffer*) #1

declare dso_local i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
