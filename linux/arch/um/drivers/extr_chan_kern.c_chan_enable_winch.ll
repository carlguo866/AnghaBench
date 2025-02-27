; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_chan_enable_winch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_chan_enable_winch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.tty_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chan_enable_winch(%struct.chan* %0, %struct.tty_port* %1) #0 {
  %3 = alloca %struct.chan*, align 8
  %4 = alloca %struct.tty_port*, align 8
  store %struct.chan* %0, %struct.chan** %3, align 8
  store %struct.tty_port* %1, %struct.tty_port** %4, align 8
  %5 = load %struct.chan*, %struct.chan** %3, align 8
  %6 = icmp ne %struct.chan* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = load %struct.chan*, %struct.chan** %3, align 8
  %9 = getelementptr inbounds %struct.chan, %struct.chan* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.chan*, %struct.chan** %3, align 8
  %14 = getelementptr inbounds %struct.chan, %struct.chan* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.chan*, %struct.chan** %3, align 8
  %21 = getelementptr inbounds %struct.chan, %struct.chan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %24 = call i32 @register_winch(i32 %22, %struct.tty_port* %23)
  br label %25

25:                                               ; preds = %19, %12, %7, %2
  ret void
}

declare dso_local i32 @register_winch(i32, %struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
