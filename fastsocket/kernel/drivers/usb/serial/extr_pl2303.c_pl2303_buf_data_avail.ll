; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_pl2303.c_pl2303_buf_data_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_pl2303.c_pl2303_buf_data_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl2303_buf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl2303_buf*)* @pl2303_buf_data_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_buf_data_avail(%struct.pl2303_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pl2303_buf*, align 8
  store %struct.pl2303_buf* %0, %struct.pl2303_buf** %3, align 8
  %4 = load %struct.pl2303_buf*, %struct.pl2303_buf** %3, align 8
  %5 = icmp eq %struct.pl2303_buf* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load %struct.pl2303_buf*, %struct.pl2303_buf** %3, align 8
  %9 = getelementptr inbounds %struct.pl2303_buf, %struct.pl2303_buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pl2303_buf*, %struct.pl2303_buf** %3, align 8
  %12 = getelementptr inbounds %struct.pl2303_buf, %struct.pl2303_buf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %10, %13
  %15 = load %struct.pl2303_buf*, %struct.pl2303_buf** %3, align 8
  %16 = getelementptr inbounds %struct.pl2303_buf, %struct.pl2303_buf* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %14, %17
  %19 = load %struct.pl2303_buf*, %struct.pl2303_buf** %3, align 8
  %20 = getelementptr inbounds %struct.pl2303_buf, %struct.pl2303_buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = urem i32 %18, %21
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %7, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
