; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"irda\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sci\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"scif\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"scifa\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"scifb\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"hscif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.uart_port*)* @sci_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sci_type(%struct.uart_port* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 132, label %7
    i32 131, label %8
    i32 130, label %9
    i32 129, label %10
    i32 128, label %11
    i32 133, label %12
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %14

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %14

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %14

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %14

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %14

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9, %8, %7
  %15 = load i8*, i8** %2, align 8
  ret i8* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
