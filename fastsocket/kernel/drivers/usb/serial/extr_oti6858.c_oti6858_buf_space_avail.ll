; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_oti6858.c_oti6858_buf_space_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_oti6858.c_oti6858_buf_space_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oti6858_buf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oti6858_buf*)* @oti6858_buf_space_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oti6858_buf_space_avail(%struct.oti6858_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oti6858_buf*, align 8
  store %struct.oti6858_buf* %0, %struct.oti6858_buf** %3, align 8
  %4 = load %struct.oti6858_buf*, %struct.oti6858_buf** %3, align 8
  %5 = icmp eq %struct.oti6858_buf* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

7:                                                ; preds = %1
  %8 = load %struct.oti6858_buf*, %struct.oti6858_buf** %3, align 8
  %9 = getelementptr inbounds %struct.oti6858_buf, %struct.oti6858_buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.oti6858_buf*, %struct.oti6858_buf** %3, align 8
  %12 = getelementptr inbounds %struct.oti6858_buf, %struct.oti6858_buf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  %15 = load %struct.oti6858_buf*, %struct.oti6858_buf** %3, align 8
  %16 = getelementptr inbounds %struct.oti6858_buf, %struct.oti6858_buf* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.oti6858_buf*, %struct.oti6858_buf** %3, align 8
  %21 = getelementptr inbounds %struct.oti6858_buf, %struct.oti6858_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %19, %22
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %7, %6
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
