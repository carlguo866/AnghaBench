; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_terminal_height.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_terminal_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i64 }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @terminal_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @terminal_height() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.winsize, align 8
  %3 = load i32, i32* @STDOUT_FILENO, align 4
  %4 = call i64 @isatty(i32 %3)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %21

7:                                                ; preds = %0
  %8 = load i32, i32* @STDOUT_FILENO, align 4
  %9 = load i32, i32* @TIOCGWINSZ, align 4
  %10 = call i32 @ioctl(i32 %8, i32 %9, %struct.winsize* %2)
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %21

20:                                               ; preds = %12, %7
  store i32 -1, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %16, %6
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
