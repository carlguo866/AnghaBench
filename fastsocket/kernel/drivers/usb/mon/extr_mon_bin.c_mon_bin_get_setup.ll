; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_get_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_get_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32* }

@SETUP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, %struct.urb*, i8)* @mon_bin_get_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @mon_bin_get_setup(i8* %0, %struct.urb* %1, i8 signext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i8 %2, i8* %7, align 1
  %8 = load %struct.urb*, %struct.urb** %6, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8 90, i8* %4, align 1
  br label %20

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.urb*, %struct.urb** %6, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @SETUP_LEN, align 4
  %19 = call i32 @memcpy(i8* %14, i32* %17, i32 %18)
  store i8 0, i8* %4, align 1
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i8, i8* %4, align 1
  ret i8 %21
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
