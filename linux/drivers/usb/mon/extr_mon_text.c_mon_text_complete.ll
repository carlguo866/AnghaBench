; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.mon_reader_text = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i32)* @mon_text_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_text_complete(i8* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mon_reader_text*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mon_reader_text*
  store %struct.mon_reader_text* %9, %struct.mon_reader_text** %7, align 8
  %10 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %11 = load %struct.urb*, %struct.urb** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @mon_text_event(%struct.mon_reader_text* %10, %struct.urb* %11, i8 signext 67, i32 %12)
  ret void
}

declare dso_local i32 @mon_text_event(%struct.mon_reader_text*, %struct.urb*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
