; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v831.c_v831_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v831.c_v831_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@FD = common dso_local global i32 0, align 4
@TIOCCDTR = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@TIOCNXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v831_disconnect() #0 {
  %1 = alloca %struct.termios, align 4
  %2 = call i32 @sleep(i32 2)
  %3 = load i32, i32* @FD, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  %6 = load i32, i32* @FD, align 4
  %7 = load i32, i32* @TIOCCDTR, align 4
  %8 = call i32 @ioctl(i32 %6, i32 %7, i32* null)
  %9 = load i32, i32* @FD, align 4
  %10 = call i32 @tcgetattr(i32 %9, %struct.termios* %1)
  %11 = call i32 @cfsetospeed(%struct.termios* %1, i32 0)
  %12 = call i32 @cfsetispeed(%struct.termios* %1, i32 0)
  %13 = load i32, i32* @FD, align 4
  %14 = load i32, i32* @TCSAFLUSH, align 4
  %15 = call i32 @tcsetattr(i32 %13, i32 %14, %struct.termios* %1)
  %16 = load i32, i32* @FD, align 4
  %17 = load i32, i32* @TIOCNXCL, align 4
  %18 = call i32 @ioctl(i32 %16, i32 %17, i32* null)
  br label %19

19:                                               ; preds = %5, %0
  %20 = load i32, i32* @FD, align 4
  %21 = call i32 @close(i32 %20)
  ret void
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @cfsetospeed(%struct.termios*, i32) #1

declare dso_local i32 @cfsetispeed(%struct.termios*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
