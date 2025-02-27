; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_setttypgrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_setttypgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSHTTY = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setttypgrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setttypgrp(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @FSHTTY, align 4
  %4 = call i32 @tcgetpgrp(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @FSHTTY, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @tcsetpgrp(i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @tcgetpgrp(i32) #1

declare dso_local i32 @tcsetpgrp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
