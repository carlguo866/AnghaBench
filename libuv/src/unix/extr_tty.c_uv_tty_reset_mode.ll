; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tty.c_uv_tty_reset_mode.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tty.c_uv_tty_reset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@termios_spinlock = common dso_local global i32 0, align 4
@UV_EBUSY = common dso_local global i32 0, align 4
@orig_termios_fd = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@orig_termios = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_tty_reset_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @errno, align 4
  store i32 %4, i32* %2, align 4
  %5 = call i32 @uv_spinlock_trylock(i32* @termios_spinlock)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @UV_EBUSY, align 4
  store i32 %8, i32* %1, align 4
  br label %25

9:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  %10 = load i32, i32* @orig_termios_fd, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i32, i32* @orig_termios_fd, align 4
  %14 = load i32, i32* @TCSANOW, align 4
  %15 = call i64 @tcsetattr(i32 %13, i32 %14, i32* @orig_termios)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @UV__ERR(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %12
  br label %21

21:                                               ; preds = %20, %9
  %22 = call i32 @uv_spinlock_unlock(i32* @termios_spinlock)
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* @errno, align 4
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %21, %7
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @uv_spinlock_trylock(i32*) #1

declare dso_local i64 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @uv_spinlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
