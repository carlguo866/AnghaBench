; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.uart_port = type { i32 }

@ICOM_PORT = common dso_local global %struct.TYPE_6__* null, align 8
@icom_kref_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"STARTUP_ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @icom_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icom_open(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ICOM_PORT, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = call i32 @kref_get(i32* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ICOM_PORT, align 8
  %11 = call i32 @startup(%struct.TYPE_6__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ICOM_PORT, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* @icom_kref_release, align 4
  %20 = call i32 @kref_put(i32* %18, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ICOM_PORT, align 8
  %22 = call i32 @trace(%struct.TYPE_6__* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @startup(%struct.TYPE_6__*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @trace(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
