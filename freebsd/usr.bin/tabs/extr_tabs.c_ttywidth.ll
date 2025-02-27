; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tabs/extr_tabs.c_ttywidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tabs/extr_tabs.c_ttywidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i32 }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"cannot find terminal width; defaulted to %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ttywidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttywidth() #0 {
  %1 = alloca %struct.winsize, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @STDOUT_FILENO, align 4
  %4 = load i32, i32* @TIOCGWINSZ, align 4
  %5 = call i32 @ioctl(i32 %3, i32 %4, %struct.winsize* %1)
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.winsize, %struct.winsize* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %2, align 4
  br label %17

10:                                               ; preds = %0
  %11 = call i32 @tgetnum(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %2, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  store i32 80, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %7
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @tgetnum(i8*) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
