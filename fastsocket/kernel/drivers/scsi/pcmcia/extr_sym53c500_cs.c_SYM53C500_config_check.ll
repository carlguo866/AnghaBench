; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_config_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i8*)* @SYM53C500_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SYM53C500_config_check(%struct.pcmcia_device* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %33 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %5
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %45

40:                                               ; preds = %5
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 0
  %44 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %41, %struct.TYPE_10__* %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
